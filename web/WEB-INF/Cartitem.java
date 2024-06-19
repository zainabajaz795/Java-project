package mycart;

public class Cartitem
{
    private String title;
    private String id;
    private String image;
    private int price;

    @Override
    public String toString() {
        return "Cartitem{" + "title=" + title + ", id=" + id + ", image=" + image + ", price=" + price + '}';
    }

    public Cartitem(String title, String id, String image, int price) {
        this.title = title;
        this.id = id;
        this.image = image;
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}