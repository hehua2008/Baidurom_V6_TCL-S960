.class Lcom/android/jrdsettings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/jrdsettings/wifi/WifiConfigUiBase;


# static fields
.field static final BUTTON_FORGET:I = -0x3

.field static final BUTTON_SUBMIT:I = -0x1

.field static final TAG:Ljava/lang/String; = "WifiDialog"


# instance fields
.field private final mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/jrdsettings/wifi/WifiConfigController;

.field private final mEdit:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mView:Landroid/view/View;

.field private showInputMethodDialog:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/jrdsettings/wifi/AccessPoint;ZZ)V
    .locals 0
    .parameter "context"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "showInputMethodDialog"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 90
    iput-boolean p4, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mEdit:Z

    .line 91
    iput-object p2, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 92
    iput-object p3, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    .line 94
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    .line 97
    iput-boolean p5, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->showInputMethodDialog:Z

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/wifi/WifiDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static addQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    .line 184
    invoke-static {p0}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeNAI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "simOperator"
    .parameter "imsi"
    .parameter "eapMethod"

    .prologue
    .line 176
    invoke-static {p0, p1, p2}, Lcom/android/jrdsettings/wifi/WifiConfigController;->makeNAI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private modifyIpTitle(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 198
    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b02b6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 199
    .local v1, ipSettingsView:Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IP"

    const-string v4, "IPv4"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b02b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 201
    .local v0, ipAddressView:Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IP"

    const-string v4, "IPv4"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    return-void
.end method


# virtual methods
.method public closeSpinnerDialog()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mController:Lcom/android/jrdsettings/wifi/WifiConfigController;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mController:Lcom/android/jrdsettings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/WifiConfigController;->closeSpinnerDialog()V

    .line 191
    :cond_0
    return-void
.end method

.method public getCancelButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 154
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getController()Lcom/android/jrdsettings/wifi/WifiConfigController;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mController:Lcom/android/jrdsettings/wifi/WifiConfigController;

    return-object v0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 149
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 144
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mEdit:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400eb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 109
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 111
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/wifi/WifiDialog;->modifyIpTitle(Landroid/view/View;)V

    .line 113
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 114
    new-instance v1, Lcom/android/jrdsettings/wifi/WifiConfigController;

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget-boolean v4, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mEdit:Z

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/jrdsettings/wifi/WifiConfigController;-><init>(Lcom/android/jrdsettings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/jrdsettings/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mController:Lcom/android/jrdsettings/wifi/WifiConfigController;

    .line 115
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 121
    iget-boolean v1, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->showInputMethodDialog:Z

    if-eqz v1, :cond_0

    .line 123
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 124
    .local v0, timer:Ljava/util/Timer;
    new-instance v1, Lcom/android/jrdsettings/wifi/WifiDialog$1;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/wifi/WifiDialog$1;-><init>(Lcom/android/jrdsettings/wifi/WifiDialog;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 134
    .end local v0           #timer:Ljava/util/Timer;
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mController:Lcom/android/jrdsettings/wifi/WifiConfigController;

    invoke-virtual {v1}, Lcom/android/jrdsettings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 135
    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 169
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 170
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 164
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 165
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 159
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 160
    return-void
.end method
