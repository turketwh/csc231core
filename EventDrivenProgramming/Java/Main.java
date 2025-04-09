public class Main {
    public static void main(String[] args) {
        ButtonObserver buttonObserver = new ButtonObserver();
        GuiApp app = new GuiApp();
        app.addButtonListener(buttonObserver);
    }
}
