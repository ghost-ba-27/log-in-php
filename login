  if ($user && password_verify($password, $user['password'])) {
        $_SESSION['user_id'] = $user['user_id']; // ensure user_id is set correctly
        $_SESSION['username'] = $user['username'];
        $_SESSION['Role'] = $user['Role'];
        $_SESSION['logged_in'] = true;
        $_SESSION['login_attempts'] = 0; // Reset login attempts on successful login

        error_log('User role: ' . $user['Role']);
