//  Cholor App by Roberto Hernández Tamayo on 09/07/18.
//  Copyright © 2018 Roberto Hernandez Tamayo.

import UIKit
import AudioKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    // MARK: - Propiedades globales para la aplicación
    
    var window: UIWindow?

    /// Reproductor con la música de fondo para el juego
    var musicaFondoReproductor: AKAudioPlayer!
    /// Reproductor para escuchar el sonido al pulsar el botón jugar
    var botonJugarReproductor: AKAudioPlayer!
    /// Reproductor para escuchar la colisión de la bola de lanzamiento con otra bola
    var colisionBolasReproductor: AKAudioPlayer!
    /// Reproductor para escuchar la colisión de la bola con los límites del área de juego
    var colisionParedReproductor: AKAudioPlayer!
    /// Reproductor para escuchar la colisión entre las dos bolas naranjas
    var colisionBolasNaranjasReproductor: AKAudioPlayer!
    /// Reproductor para escuchar la colisión entre la bola de lanzamiento y la bola negra
    var colisionConBolaNegraReproductor: AKAudioPlayer!
    /// Reproductor para escuchar la colisión el sonido para pasar al siguiente nivel
    var siguienteNivelReproductor: AKAudioPlayer!
    /// Mezclador con todos los reproductores
    var mezclador: AKMixer!
    /// Volumen inicial del reproductor de música de fondo
    let volumenInicial: Double = 1
    
    // MARK: - Ciclo de vida de la aplicación

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    // MARK: - AudioKit
    
    func initMezcladorMusical() {
        // Crear reproductores
        do {
            // Archivos de sonido
            let musicaFondoArchivo = try AKAudioFile(readFileName: "Cholor.m4a")
            let botonJuegaArchivo = try AKAudioFile(readFileName: "Boton-Jugar.m4a")
            let bolaGolpeandoParedArchivo = try AKAudioFile(readFileName: "Bola-Golpeando-Pared.m4a")
            let choqueBolasArchivo = try AKAudioFile(readFileName: "Choque-Bolas.m4a")
            let choqueBolaNegraArchivo = try AKAudioFile(readFileName: "Bola-Negra.m4a")
            let finPartidaArchivo = try AKAudioFile(readFileName: "Fin-Partida.m4a")
            let siguienteNivelArchivo = try AKAudioFile(readFileName: "Nuevo-Nivel.m4a")
            // Reproductores
            musicaFondoReproductor = try AKAudioPlayer(file: musicaFondoArchivo)
            botonJugarReproductor = try AKAudioPlayer(file: botonJuegaArchivo)
            colisionBolasReproductor = try AKAudioPlayer(file: choqueBolasArchivo)
            colisionParedReproductor = try AKAudioPlayer(file: bolaGolpeandoParedArchivo)
            colisionBolasNaranjasReproductor = try AKAudioPlayer(file: finPartidaArchivo)
            colisionConBolaNegraReproductor = try AKAudioPlayer(file: choqueBolaNegraArchivo)
            siguienteNivelReproductor = try AKAudioPlayer(file: siguienteNivelArchivo)
            // Establece si se repite indefinidamente el audio
            musicaFondoReproductor.looping = true
            // Volumen de los reproductores
            musicaFondoReproductor.volume = volumenInicial
            botonJugarReproductor.volume = volumenInicial + 1
            colisionBolasReproductor.volume = volumenInicial
            colisionParedReproductor.volume = volumenInicial - 0.8
            colisionBolasNaranjasReproductor.volume = volumenInicial + 0.5
            colisionConBolaNegraReproductor.volume = volumenInicial + 0.5
            siguienteNivelReproductor.volume = volumenInicial + 0.5
        } catch {
            print(error)
        }
        //Crear el mezclador de música
        mezclador = AKMixer (musicaFondoReproductor, botonJugarReproductor, colisionBolasReproductor, colisionParedReproductor, colisionBolasNaranjasReproductor, colisionConBolaNegraReproductor, siguienteNivelReproductor)
        // Inicialización del motor AudioKit
        AudioKit.output = mezclador
        do {
            try AudioKit.start()
        } catch {
            print("Se ha producido un error al intentar iniciar el motor de AudioKit")
        }
        // Será movido
        musicaFondoReproductor.play()
    }

}

