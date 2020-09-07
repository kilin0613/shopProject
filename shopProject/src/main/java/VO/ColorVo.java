package VO;

public class ColorVo {
	private String color_id;
	private String color;

	@Override
	public String toString() {
		return "ColorVo [color_id=" + color_id + ", color=" + color + "]";
	}

	public String getColor_id() {
		return color_id;
	}

	public void setColor_id(String color_id) {
		this.color_id = color_id;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

}
