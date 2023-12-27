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
  MockSpec<auth_service.AuthService>()
])
// class MockAuthService extends Mock implements auth_service.AuthService {}

@GenerateMocks([NavigationService])
abstract class NavigationService {
  Future<void> saveRedirecPath(path);
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
  // late auth_service.AuthService authApi;
  late MockDio mockDio;
  late MockAuthService mockAuthService;
  late Future<void> Function(String?) saveRedirecPath;
  late auth_service.AuthService authApi;

  setUpAll(() {
    provideDummy<Option<Unit>>(some(unit));
    provideDummy<Unit>(unit);
    // Ignore storage part
    mockAuthService = MockAuthService();
    when(mockAuthService.setToken(any)).thenAnswer((_) async => some(unit));
    when(mockAuthService.setRefreshToken(any)).thenAnswer((_) async => some(unit));
    when(mockAuthService.saveId(any)).thenAnswer((_) async => some(unit));
  });

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    mockDio = MockDio();
    mockAuthService = MockAuthService();
    saveRedirecPath = MockNavigationService().saveRedirecPath;
    // authApi = auth_service.AuthService(
    //   mockDio,
    // );

    // authApi = Provider<auth_service.AuthService>(
    //   (ref) => auth_service.AuthService(Dio()),
    // );
    await ConfigReader.initialize(Environment.dev);
    authApi = auth_service.AuthService(
        api: mockDio, apiService: MockApi(), hostName: ConfigReader.serverApi(), sharedService: MockSharedRefService());
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

      // when(saveRedirecPath(any)).thenAnswer((_) async => unit);
      // act
      final result = await auth_service
          .signInEmailPassword(
            emailAddress: 'abc@gmail.com',
            password: 'Zaq1@wsx',
          )
          .run(authApi);
      // assert
      expect(result, right((unit)));
      // verify(mockDio.post(any, data: anyNamed('data'))).called(1);
      // verify(mockAuthService.setToken(any)).called(1);
      // verify(mockAuthService.setRefreshToken(any)).called(1);
      // verify(mockAuthService.saveId(any)).called(1);
      // verify(saveRedirecPath(any)).called(1);
    });

    test('should return invalidEmailPassword when sign in fail', () async {
      // arrange
      when(mockDio.post(any, data: anyNamed('data'))).thenAnswer((_) async => Response(
            data: {
              'error': 'error',
            },
            statusCode: 200,
            requestOptions: RequestOptions(path: ''),
          ));
      // act
      final result = await auth_service
          .signInEmailPassword(
            emailAddress: 'abc@gmail.com',
            password: 'Zaq1@wsx',
          )
          .run(authApi);
      // assert
      verify(mockDio.post(any, data: anyNamed('data'))).called(1);
      expect(result, left(const AuthFailure.invalidEmailPassword()));
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
            emailAddress: 'abc@gmail.com',
            password: 'Zaq1@wsx',
          )
          .run(authApi);
      // assert
      verify(mockDio.post(any, data: anyNamed('data'))).called(1);
      expect(result, left(const AuthFailure.serverError()));
    });
  });
}
