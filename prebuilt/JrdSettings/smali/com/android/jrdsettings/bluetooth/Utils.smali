.class final Lcom/android/jrdsettings/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/bluetooth/Utils$ErrorDialogFragment;
    }
.end annotation


# static fields
.field static final D:Z = true

.field private static final KEY_ERROR:Ljava/lang/String; = "errorMessage"

.field private static final TAG:Ljava/lang/String; = "Bluetooth.Utils"

.field static final V:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1
    .parameter "connectionState"

    .prologue
    .line 49
    packed-switch p0, :pswitch_data_0

    .line 59
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 51
    :pswitch_0
    const v0, 0x7f09029f

    goto :goto_0

    .line 53
    :pswitch_1
    const v0, 0x7f0902a5

    goto :goto_0

    .line 55
    :pswitch_2
    const v0, 0x7f0902a3

    goto :goto_0

    .line 57
    :pswitch_3
    const v0, 0x7f0902a4

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static showConnectingError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "name"

    .prologue
    .line 95
    const v0, 0x7f0903b3

    invoke-static {p0, p1, v0}, Lcom/android/jrdsettings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 96
    return-void
.end method

.method static showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "context"
    .parameter "dialog"
    .parameter "disconnectListener"
    .parameter "title"
    .parameter "message"

    .prologue
    const v2, 0x104000a

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 82
    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 85
    return-object p1

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 78
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 79
    .local v0, okText:Ljava/lang/CharSequence;
    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 8
    .parameter "context"
    .parameter "name"
    .parameter "messageResId"

    .prologue
    const/4 v6, 0x0

    .line 99
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {p0, p2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, message:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    .line 101
    .local v3, manager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;
    if-nez v3, :cond_0

    .line 117
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {v3}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    move-object v0, v5

    check-cast v0, Landroid/app/Activity;

    .line 105
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v3}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    const-string v5, "Bluetooth.Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "show ErrorDialogFragment, message is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v2, Lcom/android/jrdsettings/bluetooth/Utils$ErrorDialogFragment;

    invoke-direct {v2}, Lcom/android/jrdsettings/bluetooth/Utils$ErrorDialogFragment;-><init>()V

    .line 109
    .local v2, dialog:Lcom/android/jrdsettings/bluetooth/Utils$ErrorDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 110
    .local v1, args:Landroid/os/Bundle;
    const-string v5, "errorMessage"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "Error"

    invoke-virtual {v2, v5, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    .end local v1           #args:Landroid/os/Bundle;
    .end local v2           #dialog:Lcom/android/jrdsettings/bluetooth/Utils$ErrorDialogFragment;
    :cond_1
    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
