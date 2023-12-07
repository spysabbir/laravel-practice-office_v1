<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\BarcodeController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\DropdownController;
use App\Http\Controllers\FileController;
use App\Http\Controllers\ItemController;
use App\Http\Controllers\LangController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\QrCodeController;
use App\Http\Controllers\SearchController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::controller(ImageController::class)->group(function(){
    Route::get('image-upload', 'index');
    Route::post('image-upload', 'store')->name('image.store');

    Route::get('image-upload-convert', 'imageUploadConvert');
    Route::post('image-upload-convert', 'imageUploadConvertStore')->name('image.convert.store');
});

Route::get('login', [AuthController::class, 'login'])->name('login');
Route::post('post-login', [AuthController::class, 'postLogin'])->name('login.post');
Route::get('registration', [AuthController::class, 'registration'])->name('register');
Route::post('post-registration', [AuthController::class, 'postRegistration'])->name('register.post');
Route::get('dashboard', [AuthController::class, 'dashboard'])->name('dashboard')->middleware('verified');
Route::get('logout', [AuthController::class, 'logout'])->name('logout');

Route::get('forget-password', [AuthController::class, 'showForgetPasswordForm'])->name('forget.password.get');
Route::post('forget-password', [AuthController::class, 'submitForgetPasswordForm'])->name('forget.password.post');
Route::get('reset-password/{token}', [AuthController::class, 'showResetPasswordForm'])->name('reset.password.get');
Route::post('reset-password', [AuthController::class, 'submitResetPasswordForm'])->name('reset.password.post');

Route::get('account/verify/{token}', [AuthController::class, 'verifyAccount'])->name('user.verify');

Route::get('posts-load-more', [PostController::class, 'postsLoadMore'])->name('posts.load.more');

Route::get('send-email-pdf/{id}', [PostController::class, 'sendEmailPdf']);

Route::get('birthday-notify/{id}', [UserController::class, 'birthdayNotify']);

Route::get('posts-auto-load', [PostController::class, 'postsAutoLoad'])->name('posts.auto.load');

Route::controller(FileController::class)->group(function(){
    Route::get('file-upload', 'index');
    Route::post('file-upload', 'store')->name('file.upload');
});

Route::get('ajax-pagination', [ItemController::class, 'index'])->name('ajax.pagination');

Route::get('dropdown', [DropdownController::class, 'index']);
Route::post('api/fetch-states', [DropdownController::class, 'fetchState']);
Route::post('api/fetch-cities', [DropdownController::class, 'fetchCity']);

Route::get('display-user', [UserController::class, 'displayUser']);

Route::resource('product', ProductController::class);

Route::controller(SearchController::class)->group(function(){
    Route::get('demo-search', 'index');
    Route::get('autocomplete', 'autocomplete')->name('autocomplete');
});

Route::get('lang/home', [LangController::class, 'index']);
Route::get('lang/change', [LangController::class, 'change'])->name('changeLang');


Route::get('qrcode', [QrCodeController::class, 'qrcode']);
Route::get('qrcode-with-color', [QrCodeController::class, 'qrcodeWithColor']);
Route::get('qrcode-with-image', [QrCodeController::class, 'qrcodeWithImage']);
Route::get('qrcode-email', [QrCodeController::class, 'qrcodeEmail']);
Route::get('qrcode-phone', [QrCodeController::class, 'qrcodePhone']);
Route::get('qrcode-sms', [QrCodeController::class, 'qrcodeSms']);

Route::resource('students', StudentController::class);


Route::get('categories', [CategoryController::class, 'index']);

Route::get('barcode', [BarcodeController::class, 'barcode']);
Route::get('barcode-save', [BarcodeController::class, 'barcodeSave']);
Route::get('barcode-blade', [BarcodeController::class, 'barcodeBlade']);

Route::get('email-test', [UserController::class, 'sendEmail']);

Route::get('call-helper', function(){

    $mdY = convertYmdToMdy('2022-02-12');
    var_dump("Converted into 'MDY': " . $mdY);

    $ymd = convertMdyToYmd('02-12-2022');
    var_dump("Converted into 'YMD': " . $ymd);
});

Route::controller(UserController::class)->group(function(){
    Route::get('users', 'index');
    Route::get('users-export', 'export')->name('users.export');
    Route::post('users-import', 'import')->name('users.import');
});






