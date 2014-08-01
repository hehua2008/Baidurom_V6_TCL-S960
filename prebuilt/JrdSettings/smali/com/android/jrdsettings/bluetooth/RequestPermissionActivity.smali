.class public Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;
.super Landroid/app/Activity;
.source "RequestPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final MAX_DISCOVERABLE_TIMEOUT:I = 0xe10

.field private static final REQUEST_CODE_START_BT:I = 0x1

.field static final RESULT_BT_STARTING_OR_STARTED:I = -0x3e8

.field private static final TAG:Ljava/lang/String; = "RequestPermissionActivity"

.field private static mRequestCode:I


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mEnableOnly:Z

.field private mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

.field private mNeededToEnableBluetooth:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeout:I

.field private mUserConfirmed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    sput v0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mRequestCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 83
    new-instance v0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity$1;-><init>(Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;)V

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    return-void
.end method

.method private createDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 166
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-boolean v1, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    if-eqz v1, :cond_1

    .line 169
    const v1, 0x7f0902b6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 170
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 185
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    .line 186
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 188
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-ne v1, v5, :cond_0

    .line 190
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->onClick(Landroid/content/DialogInterface;I)V

    .line 192
    :cond_0
    return-void

    .line 174
    :cond_1
    iget v1, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-nez v1, :cond_2

    .line 175
    const v1, 0x7f0902b3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 181
    :goto_1
    const v1, 0x7f090236

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    const v1, 0x7f090237

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 178
    :cond_2
    const v1, 0x7f0902b2

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private parseIntent()Z
    .locals 8

    .prologue
    const/16 v7, 0x78

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 271
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 272
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 273
    iput-boolean v2, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    .line 292
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 293
    .local v1, manager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;
    if-nez v1, :cond_4

    .line 294
    const-string v4, "RequestPermissionActivity"

    const-string v5, "Error: there\'s a problem starting Bluetooth"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 300
    .end local v1           #manager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;
    :goto_1
    return v2

    .line 274
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 276
    const-string v4, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 279
    const-string v4, "RequestPermissionActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting Bluetooth Discoverable Timeout = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget v4, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    const/16 v5, 0xe10

    if-le v4, v5, :cond_0

    .line 282
    :cond_2
    iput v7, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    goto :goto_0

    .line 285
    :cond_3
    const-string v4, "RequestPermissionActivity"

    const-string v5, "Error: this activity may be started only with intent android.bluetooth.adapter.action.REQUEST_ENABLE or android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    .line 298
    .restart local v1       #manager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;
    :cond_4
    invoke-virtual {v1}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    move v2, v3

    .line 300
    goto :goto_1
.end method

.method private proceedAndFinish()V
    .locals 9

    .prologue
    .line 237
    iget-boolean v3, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v3, :cond_2

    .line 239
    const/4 v2, -0x1

    .line 258
    .local v2, returnCode:I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    .line 259
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 262
    :cond_1
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 263
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 264
    return-void

    .line 240
    .end local v2           #returnCode:I
    :cond_2
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x17

    iget v5, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v3, v4, v5}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v5, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long v0, v3, v5

    .line 244
    .local v0, endTime:J
    invoke-static {p0, v0, v1}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothPreferences;->persistDiscoverableEndTimestamp(Landroid/content/Context;J)V

    .line 246
    iget v3, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    if-lez v3, :cond_3

    .line 247
    invoke-static {p0, v0, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableTimeoutReceiver;->setDiscoverableAlarm(Landroid/content/Context;J)V

    .line 249
    :cond_3
    iget v2, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    .line 251
    .restart local v2       #returnCode:I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 252
    const/4 v2, 0x1

    goto :goto_0

    .line 255
    .end local v0           #endTime:J
    .end local v2           #returnCode:I
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #returnCode:I
    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 197
    sget v0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mRequestCode:I

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_0

    .line 198
    const-string v0, "RequestPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected onActivityResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 200
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 219
    :goto_0
    return-void

    .line 203
    :cond_0
    const/16 v0, -0x3e8

    if-eq p2, v0, :cond_1

    .line 204
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 205
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 211
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mUserConfirmed:Z

    .line 213
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 214
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 217
    :cond_2
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->createDialog()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 313
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 316
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "RequestPermissionActivity"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 222
    packed-switch p2, :pswitch_data_0

    .line 232
    :goto_0
    return-void

    .line 224
    :pswitch_0
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 228
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 229
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 222
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0, v5}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 107
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->parseIntent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 161
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    .line 114
    .local v0, btState:I
    packed-switch v0, :pswitch_data_0

    .line 159
    const-string v2, "RequestPermissionActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown adapter state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :pswitch_0
    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/android/jrdsettings/bluetooth/RequestPermissionHelperActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 136
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    iget-boolean v2, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v2, :cond_1

    .line 138
    const-string v2, "com.android.jrdsettings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    :goto_1
    sget v2, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mRequestCode:I

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 146
    sget v2, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mRequestCode:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mRequestCode:I

    .line 147
    iput-boolean v5, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    goto :goto_0

    .line 140
    :cond_1
    const-string v2, "com.android.jrdsettings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v2, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    iget v3, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mTimeout:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 150
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mEnableOnly:Z

    if-eqz v2, :cond_2

    .line 152
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->proceedAndFinish()V

    goto :goto_0

    .line 155
    :cond_2
    invoke-direct {p0}, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->createDialog()V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 306
    iget-boolean v0, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mNeededToEnableBluetooth:Z

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/RequestPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 309
    :cond_0
    return-void
.end method
