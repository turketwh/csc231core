import javax.swing.*;
import javax.swing.plaf.basic.BasicOptionPaneUI;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class GuiApp extends JFrame implements ActionListener {

    JPanel canvas1;
    JPanel canvas2;
    JTextField textfield;
    JButton button;

    public GuiApp() {
            super("App Window");
            setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            setLayout(new BorderLayout());
            canvas1 = new JPanel();
            canvas2 = new JPanel();
            textfield = new JTextField();
            textfield.setColumns(20);
            textfield.setText("Button not clicked!");
            button = new JButton("Click Me!");
            canvas1.add(textfield);
            canvas2.add(button);
            add(canvas1, BorderLayout.CENTER);
            add(canvas2, BorderLayout.SOUTH);
            pack();
            setSize(300,150);
            addButtonListener(this);
            setVisible(true);
    }

    public void addButtonListener(ActionListener actionListener) {
        button.addActionListener(actionListener);
    }

    public void actionPerformed(ActionEvent e) {
        textfield.setText("Button has been clicked!");
    }
}
