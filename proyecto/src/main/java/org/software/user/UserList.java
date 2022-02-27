package org.software.user;

import java.util.List;

import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "users")
public class UserList {
	private List<User> items;

	public UserList() {
	}

	public UserList(List<User> items) {
		this.items = items;
	}

	@XmlElement(name = "data")
	public List<User> getItems() {
		return items;
	}
}
