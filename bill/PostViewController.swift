import UIKit

class PostViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(
            withDuration: 0.1, // 何秒かけて変化するか
            delay: 0.1, // 開始までの時間
            options: .curveEaseIn,
            animations: {() in
                // 画像に対する値の設定
                // 値の設定はメソッドチェーンで指定できる
                // 画像を小さくしつつ、回転させる
                self.imageView.transform = CGAffineTransform(
                    scaleX: 1.0,
                    y:1.0)
        },
            completion: {(Bool) in
                // アニメーション完了後の挙動
        })
        
        //　アニメーションのオプション
        // curveEaseOut 動き終わりがゆっくり
        // curveEaseIn　動き始まりがゆっくり
        // curveEaseInOUt　始めと終わりがゆっくり
        // Linear　一定速度
        UIView.animate(withDuration:0.3,
                       // 上部でdelayが1.0秒後に開始
            // 0.2秒で変化している
            // 0.1秒後に始めるため、トータル1.3秒後
            delay: 0.3,
            options: .curveEaseOut,
            animations: {()in
                // 画像サイズを大きくする
                self.imageView.transform = CGAffineTransform(
                    scaleX: 2.0,
                    y: 2.0)
                // 画像の透過度を変更する
                self.imageView.alpha = 0
        },
            completion: {(Bool) in
                // アニメーション完了後メイン画面に遷移
                self.performSegue(withIdentifier: "toMain", sender: nil)
        })
    }
    
}
