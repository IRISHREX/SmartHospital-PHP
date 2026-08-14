<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Smart Hospital - Web Installation Wizard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .installer-card {
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.2);
            width: 100%;
            max-width: 520px;
            padding: 35px;
        }
        .brand-header {
            text-align: center;
            margin-bottom: 25px;
        }
        .brand-header h3 {
            color: #1e3c72;
            font-weight: 700;
            margin-bottom: 5px;
        }
        .brand-header p {
            color: #6c757d;
            font-size: 14px;
        }
        .btn-install {
            background: #1e3c72;
            border: none;
            color: white;
            font-weight: 600;
            padding: 12px;
            width: 100%;
            border-radius: 6px;
            transition: all 0.3s ease;
        }
        .btn-install:hover {
            background: #2a5298;
            color: white;
        }
    </style>
</head>
<body>
    <div class="installer-card">
        <div class="brand-header">
            <h3>Smart Hospital</h3>
            <p>Database & Environment Installation Setup</p>
        </div>

        <?php if (!empty($error)): ?>
            <div class="alert alert-danger py-2 px-3 mb-3 fs-14">
                <strong>Error:</strong> <?php echo $error; ?>
            </div>
        <?php endif; ?>

        <?php if (!empty($success)): ?>
            <div class="alert alert-success py-2 px-3 mb-3 fs-14">
                <strong>Success:</strong> <?php echo $success; ?>
            </div>
        <?php endif; ?>

        <form method="post" action="<?php echo base_url('install'); ?>">
            <div class="mb-3">
                <label class="form-label fw-semibold">Database Hostname</label>
                <input type="text" name="hostname" class="form-control" value="<?php echo set_value('hostname', 'localhost'); ?>" required>
            </div>
            <div class="mb-3">
                <label class="form-label fw-semibold">Database Name</label>
                <input type="text" name="database" class="form-control" value="<?php echo set_value('database'); ?>" placeholder="e.g. u832627210_bms_hospital" required>
            </div>
            <div class="mb-3">
                <label class="form-label fw-semibold">Database Username</label>
                <input type="text" name="username" class="form-control" value="<?php echo set_value('username'); ?>" placeholder="e.g. u832627210_admin_bms" required>
            </div>
            <div class="mb-3">
                <label class="form-label fw-semibold">Database Password</label>
                <input type="password" name="password" class="form-control" placeholder="Enter Database Password">
            </div>
            <button type="submit" class="btn btn-install mt-2">Test & Save Database Setup</button>
        </form>
    </div>
</body>
</html>
