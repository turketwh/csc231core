import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class ButtonObserver implements ActionListener {
    public void actionPerformed(ActionEvent e) {
        System.out.println("Button Observer sees event of: " + e.toString());
    }
}
