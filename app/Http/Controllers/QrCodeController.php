<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class QrCodeController extends Controller
{
    public function qrcode() {
        return QrCode::size(300)->generate('A basic example of QR code!');
    }

    public function qrcodeWithColor() {
        return QrCode::size(300)->backgroundColor(255,55,0)->generate('A simple example of QR code');
    }

    public function qrcodeWithImage() {
        $image = QrCode::format('png')
                         ->merge(public_path('images/1701147275.jpg'), 0.5, true)
                         ->size(500)
                         ->errorCorrection('H')
                         ->generate('A simple example of QR code!');

        return response($image)->header('Content-type', 'image/png');
    }

    public function qrcodeEmail() {
        return QrCode::size(500)->email('spysabbir@spysabbir.com', 'Welcome to spysabbir.com!', 'This is !.');
    }

    public function qrcodePhone() {
        return QrCode::phoneNumber('111-222-333');
    }

    public function qrcodeSms() {
        return QrCode::SMS('111-222-333', 'Body of the message');
    }
}
