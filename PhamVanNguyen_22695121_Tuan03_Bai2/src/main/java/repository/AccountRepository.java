package repository;

import model.Account;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.Optional;

public class AccountRepository {
    private final List<Account> store = new CopyOnWriteArrayList<>();

    public List<Account> findAll() {
        return store;
    }

    public Optional<Account> findByUsername(String username) {
        return store.stream().filter(a -> a.getUsername().equalsIgnoreCase(username)).findFirst();
    }

    public boolean add(Account acc) {
        if (acc == null || acc.getUsername() == null) return false;
        if (findByUsername(acc.getUsername()).isPresent()) return false;
        return store.add(acc);
    }
}
