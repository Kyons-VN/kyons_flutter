import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kyons_flutter/boostrap/config_reader.dart';
import 'package:kyons_flutter/src/authentication/data/auth_service.dart' as auth_service;
import 'package:kyons_flutter/src/core/data/api.dart';
import 'package:kyons_flutter/src/core/data/shared.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_package/shared_package.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'auth_service_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<Dio>(),
  MockSpec<SharedPreferences>(),
  MockSpec<Api>(),
  MockSpec<SharedRefService>(),
])
@GenerateMocks([NavigationService])
abstract class NavigationService {
  Unit saveRedirecPath(String path);
}

ProviderContainer createContainer({
  ProviderContainer? parent,
  List<Override> overrides = const [],
  List<ProviderObserver>? observers,
}) {
  final container = ProviderContainer(
    parent: parent,
    overrides: overrides,
    observers: observers,
  );
  addTearDown(container.dispose);
  return container;
}

void main() {
  late MockDio mockDio;
  // late MockAuthApi mockAuthApi;
  late auth_service.AuthApi authApi;
  late MockSharedRefService mockSharedRefService;
  late MockNavigationService navigationService;
  setUpAll(() async {
    provideDummy<Option<Unit>>(some(unit));
    provideDummy<Unit>(unit);
    // Ignore storage part
    // mockAuthApi = MockAuthApi();
    TestWidgetsFlutterBinding.ensureInitialized();
    mockDio = MockDio();
    // mockAuthApi = MockAuthApi();
    mockSharedRefService = MockSharedRefService();

    await ConfigReader.initialize(Environment.dev);
    navigationService = MockNavigationService();

    authApi = auth_service.AuthApi(
        api: mockDio,
        apiService: MockApi(),
        hostName: ConfigReader.serverApi(),
        sharedService: MockSharedRefService(),
        saveRedirecPath: navigationService.saveRedirecPath);
    when(authApi.setToken('any')).thenAnswer((_) async => some(unit));
    when(authApi.setRefreshToken('any')).thenAnswer((_) async => some(unit));
    when(authApi.saveId('any')).thenAnswer((_) async => some(unit));
    when(mockSharedRefService.setToken('')).thenAnswer((_) async => some(unit));
  });
  group('sign up', () {
    test('should return Success when called with valid parameters', () async {
      // arrange
      const mockEmail = 'test@gmail.com';
      const mockPassword = 'Test@123';
      when(mockDio.post(any, data: anyNamed('data'))).thenAnswer((_) async => Response(
            // data: {
            //   'error_code': 'UsernameExistsException',
            // },
            statusCode: 200,
            requestOptions: RequestOptions(),
          ));

      // act
      final result = await auth_service.signUp(email: mockEmail, password: mockPassword).run(authApi);

      // assert
      expect(result, right(unit));
      verify(mockDio.post(any, data: anyNamed('data'))).called(1);
    });

    test('should return invalidEmail when called with valid email', () async {
      // arrange
      const mockEmail = 'testgmail.com';
      const mockPassword = 'Test@123';

      // act
      final result = await auth_service.signUp(email: mockEmail, password: mockPassword).run(authApi);

      // assert
      expect(result, left(const AuthFailure.invalidEmail()));
      verifyNever(mockDio.post(any, data: anyNamed('data')));
    });

    test('should return invalidPassword when called with invalid password', () async {
      // arrange
      const mockEmail = 'test@gmail.com';
      const mockPassword = 'test@123';

      // act
      final result = await auth_service.signUp(email: mockEmail, password: mockPassword).run(authApi);

      // assert
      expect(result, left(const AuthFailure.invalidPassword()));
      verifyNever(mockDio.post(any, data: anyNamed('data')));
    });

    test('should return serverError when called 400 without error_code ', () async {
      // arrange
      const mockEmail = 'test@gmail.com';
      const mockPassword = 'Test@123';
      when(mockDio.post(any, data: anyNamed('data'))).thenAnswer((_) async => Response(
            // data: {
            //   'error_code': 'UsernameExistsException',
            // },
            statusCode: 400,
            requestOptions: RequestOptions(),
          ));

      // act
      final result = await auth_service.signUp(email: mockEmail, password: mockPassword).run(authApi);

      // assert
      expect(result, left(const AuthFailure.serverError()));
      verify(mockDio.post(any, data: anyNamed('data'))).called(1);
    });

    test('should return serverError when called error but not 400 ', () async {
      // arrange
      const mockEmail = 'test@gmail.com';
      const mockPassword = 'Test@123';
      when(mockDio.post(any, data: anyNamed('data'))).thenAnswer((_) async => Response(
            statusCode: 401,
            requestOptions: RequestOptions(),
          ));

      // act
      final result = await auth_service.signUp(email: mockEmail, password: mockPassword).run(authApi);

      // assert
      expect(result, left(const AuthFailure.serverError()));
      verify(mockDio.post(any, data: anyNamed('data'))).called(1);
    });
  });

  group('sign in email password', () {
    test('should return unit when sign in success', () async {
      // arrange
      const Map<String, String> data = {
        'access_token': 'token',
        'refresh_token': 'refresh_token',
        'sub': 'uuid',
        'redirect_after_auth': 'HomePage',
      };
      when(mockDio.post(any, data: anyNamed('data'))).thenAnswer((_) async => Response(
            data: data,
            statusCode: 200,
            requestOptions: RequestOptions(),
          ));

      when(mockSharedRefService.setToken(any)).thenAnswer((_) async => some(unit));
      when(mockSharedRefService.setRefreshToken(any)).thenAnswer((_) async => some(unit));
      when(mockSharedRefService.saveId(any)).thenAnswer((_) async => some(unit));
      when(navigationService.saveRedirecPath(any)).thenAnswer((_) => unit);

      // act
      final result = await auth_service
          .signInEmailPassword(
            emailAddress: 'test@gmail.com',
            password: 'Test@123',
          )
          .run(authApi);
      // assert
      expect(result, right((unit)));
      verify(mockDio.post(any, data: anyNamed('data'))).called(1);
      verify(authApi.setToken(data['access_token']!)).called(1);
      verify(authApi.setRefreshToken(data['refresh_token']!)).called(1);
      verify(authApi.saveId(data['sub']!)).called(1);
      verify(navigationService.saveRedirecPath(any)).called(1);
    });

    test('should return invalidEmailPassword when sign in fail', () async {
      // arrange
      const data = {
        'error': 'error',
      };
      when(mockDio.post(any, data: anyNamed('data'))).thenAnswer((_) async => Response(
            data: data,
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ));

      // act
      final result = await auth_service
          .signInEmailPassword(
            emailAddress: 'test@gmail.com',
            password: 'Test@123',
          )
          .run(authApi);
      // assert
      // verify(mockDio.post(any, data: anyNamed('data'))).called(1);
      expect(result, left(const AuthFailure.invalidEmailPassword()));
      verify(mockDio.post(any, data: anyNamed('data'))).called(1);
      verifyNever(authApi.setToken('token'));
      verifyNever(authApi.setRefreshToken('refresh_token'));
      verifyNever(authApi.saveId('sub'));
      verifyNever(navigationService.saveRedirecPath(any));
    });

    test('should return serverError when sign in fail', () async {
      // arrange
      when(mockDio.post(any, data: anyNamed('data'))).thenAnswer((_) async => Response(
            data: {
              'error': 'error',
            },
            statusCode: 404,
            requestOptions: RequestOptions(path: ''),
          ));
      // act
      final result = await auth_service
          .signInEmailPassword(
            emailAddress: 'test@gmail.com',
            password: 'Test@123',
          )
          .run(authApi);
      // assert
      expect(result, left(const AuthFailure.serverError()));
      verify(mockDio.post(any, data: anyNamed('data'))).called(1);
      verifyNever(authApi.setToken('token'));
      verifyNever(authApi.setRefreshToken('refresh_token'));
      verifyNever(authApi.saveId('sub'));
      verifyNever(navigationService.saveRedirecPath(any));
    });
  });
}
