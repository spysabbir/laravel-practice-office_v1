<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Picqer\Barcode\BarcodeGeneratorHTML;
use Picqer\Barcode\BarcodeGeneratorPNG;

class BarcodeController extends Controller
{
    public function barcode() {
        $generatorPNG = new BarcodeGeneratorPNG();
        $image = $generatorPNG->getBarcode('000005263635', $generatorPNG::TYPE_CODE_128);

        return response($image)->header('Content-type','image/png');
    }

    public function barcodeSave() {
        $generatorPNG = new BarcodeGeneratorPNG();
        $image = $generatorPNG->getBarcode('000005263635', $generatorPNG::TYPE_CODE_128);

        Storage::put('barcodes/demo.png', $image);

        return response($image)->header('Content-type','image/png');
    }

    public function barcodeBlade() {
        $generatorHTML = new BarcodeGeneratorHTML();
        $barcode = $generatorHTML->getBarcode('0001245259636', $generatorHTML::TYPE_CODE_128);

        return view('barcode', compact('barcode'));
    }
}
