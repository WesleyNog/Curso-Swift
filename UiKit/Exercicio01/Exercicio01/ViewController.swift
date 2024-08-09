//
//  ViewController.swift
//  Exercicio01
//
//  Created by Wesley Nogueira on 03/08/24.
//

import UIKit

class ViewController: UIViewController {
    let imageView = UIImageView()
    let titleView = UILabel()
    let articleView = UILabel()
    let nextButton = UIButton()
    
    var portraitConstraints: [NSLayoutConstraint] = []
    var ladscapeConstraints: [NSLayoutConstraint] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        SetupConstraints()
    
    }
    
    func SetupConstraints() {
        portraitConstraints = [
            // Imagem //
            imageView.heightAnchor.constraint(equalToConstant: 250),
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // Titulo //
            titleView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            titleView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            
            // Artigo //
            articleView.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 20),
            articleView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            articleView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            
            // Botão //
            nextButton.widthAnchor.constraint(equalToConstant: 50),
            nextButton.heightAnchor.constraint(equalToConstant: 50),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.bottomAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ]
        
        ladscapeConstraints = [
            // Imagem //
            imageView.heightAnchor.constraint(equalToConstant: 250),
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            // Titulo //
            titleView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            titleView.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 20),
            titleView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            // Artigo //
            articleView.topAnchor.constraint(equalTo: titleView.bottomAnchor, constant: 30),
            articleView.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 20),
            articleView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            
            // Botão //
            nextButton.widthAnchor.constraint(equalToConstant: 50),
            nextButton.heightAnchor.constraint(equalToConstant: 50),
            nextButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
        ]
    }
    
    func setupViews() {
        // Estanciando e configurando a imagem //
        imageView.image = UIImage(named: "imgTeste")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        
        // Estanciando e configurando o Título //
        titleView.text = "Quem disse que Jardinagem não pode ser Legal?"
        titleView.font = .boldSystemFont(ofSize: 22)
        titleView.textAlignment = .center
        titleView.numberOfLines = 0
        titleView.lineBreakMode = .byWordWrapping
        titleView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleView)
        
        // Estanciando e configurando o artigo //
        articleView.text = "Torne o trabalho de cuidar de suas plantas em um hobby, venha aprender conosco dicas preciosas para cuidar de suas plantinhas e fazer do seu local mais verde e feliz."
        articleView.font = .systemFont(ofSize: 22)
        articleView.textAlignment = .justified
        articleView.numberOfLines = 0
        articleView.lineBreakMode = .byWordWrapping
        articleView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(articleView)
        
        // Estanciando e configurando o botão //
        nextButton.setTitle(">", for: .normal)
        nextButton.backgroundColor = .systemTeal
        nextButton.layer.cornerRadius = 15
        nextButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        nextButton.tintColor = .systemMint
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nextButton)
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        if traitCollection.verticalSizeClass == .compact {
            // Ativar paisagem
            NSLayoutConstraint.deactivate(portraitConstraints)
            NSLayoutConstraint.activate(ladscapeConstraints)
        } else {
            // Ativar retrato
            NSLayoutConstraint.deactivate(ladscapeConstraints)
            NSLayoutConstraint.activate(portraitConstraints)
        }
}
}
