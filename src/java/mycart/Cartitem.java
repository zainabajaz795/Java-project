package mycart;

public class Cartitem
{
    private String id;
    private String title;
    private String image;
    private int price;

    @Override
    public String toString() {
        return "Cartitem{" + "id=" + id + ", title=" + title + ", image=" + image + ", price=" + price + '}';
    }

    public Cartitem(String id, String title, String image, int price) {
        this.id = id;
        this.title = title;
        this.image = image;
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this. title =  title;
        
    }

    public String getId() {
        return id;
    }

    public void setId(String  id) {
        this.id =id;
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