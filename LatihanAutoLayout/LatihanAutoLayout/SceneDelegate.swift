//
//  SceneDelegate.swift
//  LatihanAutoLayout
//
//  Created by Poncoe on 15/06/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Gunakan metode ini untuk mengkonfigurasikan dan melampirkan UIWindow ‘window’ ke UIWindowScene `scene` yang disediakan.
        // Jika menggunakan storyboard, properti `window` akan secara otomatis diinisialisasi dan dilampirkan ke scene.
        // Delegasi ini tidak mengartikan scene atau sesi penghubung.
        guard let _ = (scene as? UIWindowScene) else { return }
    }
    
    func sceneDidDisconnect(_ scene: UIScene) {
        // Dipanggil ketika terdapat scene yang akan dirilis oleh system.
        // Ini terjadi tak lama setelah scene memasuki background, atau ketika sesinya diakhiri.
        // Ia akan melepaskan sumber daya apa pun dari scene yang dapat dibuat kembali saat scene berikutnya terhubung.
        // Sebuah scene dapat terhubung kembali nanti, karena sesinya tidak harus diakhiri.
    }
    
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Dipanggil ketika scene telah beralih dari keadaan tidak aktif menjadi aktif.
        // Gunakan metode ini untuk memulai kembali tugas yang dijeda (atau belum dimulai) saat scene tidak aktif.
    }
    
    func sceneWillResignActive(_ scene: UIScene) {
        // Dipanggil ketika scene telah beralih dari keadaan aktif menjadi tidak aktif.
        // Biasanya terjadi karena ada interupsi sementara (seperti ada panggilan telepon masuk).
    }
    
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Dipanggil ketika scene berpindah dari background ke foreground.
        // Gunakanlah metode ini untuk membatalkan perubahan yang dilakukan saat memasuki background.
    }
    
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Dipanggil ketika scen berpindah dari foreground ke background.
        // Gunakanlah metode ini untuk menyimpan data, merilis shared resource dan menyimpan informasi keadaan scene secara spesifik.
    }
    
    
}

