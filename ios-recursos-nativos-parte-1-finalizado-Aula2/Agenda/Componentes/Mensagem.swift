//
//  Mensagem.swift
//  Agenda
//
//  Created by Guilherme Augusto da Rocha Manhani on 13/01/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit
import MessageUI

class Mensagem: NSObject, MFMessageComposeViewControllerDelegate {

    func configuraSMS(_ aluno:Aluno) -> MFMessageComposeViewController? {
        if MFMessageComposeViewController.canSendText() {
            let componenteMensagem = MFMessageComposeViewController()
            guard let numeroDoAluno = aluno.telefone else { return componenteMensagem }
            componenteMensagem.recipients = [numeroDoAluno]
            componenteMensagem.messageComposeDelegate = self
            
            
            return componenteMensagem
        }
        return nil
    }
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
        controller.dismiss(animated: true, completion: nil)
    }
}
