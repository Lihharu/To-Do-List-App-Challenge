//
//  SceneDelegate.swift
//  CoreData Todo List App
//
//  Created by Bulldozer on 16/02/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Gunakan metode ini untuk secara opsional mengkonfigurasi dan melampirkan `window` UIWindow ke` scene` UIWindowScene yang disediakan.
        // Jika menggunakan storyboard, properti `window` secara otomatis akan diinisialisasi dan dilampirkan ke adegan.
        // Delegasi ini tidak menyiratkan bahwa adegan atau sesi penghubung adalah baru (lihat `application: configurationForConnectingSceneSession`).
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Disebut sebagai adegan yang dirilis oleh sistem.
        // Ini terjadi segera setelah adegan memasuki latar belakang, atau saat sesinya dibuang.
        // Lepaskan sumber daya apa pun yang terkait dengan adegan ini yang dapat dibuat ulang saat adegan terhubung lagi.
        // Adegan mungkin terhubung kembali nanti, karena sesinya tidak perlu dibuang (lihat `application: didDiscardSceneSessions` sebagai gantinya).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Dipanggil ketika adegan telah berpindah dari keadaan tidak aktif ke keadaan aktif.
        // Gunakan metode ini untuk memulai kembali tugas apa pun yang dihentikan sementara (atau belum dimulai) saat adegan tidak aktif.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Dipanggil saat adegan akan berpindah dari status aktif ke status tidak aktif.
        // Ini mungkin terjadi karena gangguan sementara (mis. Panggilan telepon masuk).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Disebut sebagai transisi adegan dari latar belakang ke latar depan.
        // Gunakan metode ini untuk membatalkan perubahan yang dibuat saat memasuki latar belakang.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Disebut sebagai transisi adegan dari latar depan ke latar belakang.
        // Gunakan metode ini untuk menyimpan data, merilis sumber daya bersama, dan menyimpan cukup informasi keadaan khusus adegan
        // untuk mengembalikan layar ke kondisi saat ini.
        
        // Simpan perubahan dalam konteks objek yang dikelola aplikasi saat aplikasi bertransisi ke latar belakang.
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }


}

