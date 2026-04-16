public class SMS implements Notificacao {

    @Override
    public void enviarMensagem(String msg) {
        System.out.println("Enviando SMS: " + msg);
    }
}