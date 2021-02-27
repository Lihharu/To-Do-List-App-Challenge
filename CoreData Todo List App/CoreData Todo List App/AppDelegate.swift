//
//  AppDelegate.swift
//  CoreData Todo List App
//
//  Created by Bulldozer on 16/02/21.
//

import UIKit
import CoreData

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Timpa titik untuk penyesuaian setelah peluncuran aplikasi.
        return true
    }

    // MARK: UISceneSession Lifecycle (Siklus Hidup UISceneSession)

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Dipanggil saat sesi adegan baru sedang dibuat.
        // Gunakan metode ini untuk memilih konfigurasi untuk membuat adegan baru.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Dipanggil saat pengguna membuang sesi adegan.
        // Jika ada sesi yang dibuang saat aplikasi tidak berjalan, ini akan segera dipanggil setelah application: didFinishLaunchingWithOptions.
        // Gunakan metode ini untuk melepaskan sumber daya apa pun yang khusus untuk adegan yang dibuang, karena tidak akan kembali.
    }

    // MARK: - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {
        /*
         Kontainer persisten untuk aplikasi. Implementasi ini
         membuat dan mengembalikan kontainer, setelah memuat penyimpanan untuk
         aplikasi untuk itu. Properti ini bersifat opsional karena ada yang sah
         kondisi kesalahan yang dapat menyebabkan pembuatan toko gagal.
         */
        let container = NSPersistentContainer(name: "CoreData_Todo_List_App")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Ganti implementasi ini dengan kode untuk menangani kesalahan dengan tepat.
                // fatalError () menyebabkan aplikasi menghasilkan log kerusakan dan berhenti. Anda tidak boleh menggunakan fungsi ini dalam aplikasi pengiriman, meskipun mungkin berguna selama pengembangan.
                 
                /*
                 Alasan umum kesalahan di sini meliputi:
                 * Direktori induk tidak ada, tidak dapat dibuat, atau melarang penulisan.
                 * Penyimpanan persisten tidak dapat diakses, karena izin atau perlindungan data saat perangkat terkunci.
                 * Perangkat kehabisan ruang.
                 * Toko tidak dapat dimigrasikan ke versi model saat ini.
                 Periksa pesan kesalahan untuk menentukan apa masalah sebenarnya.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Periksa pesan kesalahan untuk menentukan apa masalah sebenarnya.
                // fatalError () menyebabkan aplikasi menghasilkan log kerusakan dan berhenti. Anda tidak boleh menggunakan fungsi ini dalam aplikasi pengiriman, meskipun mungkin berguna selama pengembangan.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

}

