.class Lcom/android/jrdsettings/SecuritySettings$5$3;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/SecuritySettings$5;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/jrdsettings/SecuritySettings$5;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/SecuritySettings$5;)V
    .locals 0
    .parameter

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/jrdsettings/SecuritySettings$5$3;->this$1:Lcom/android/jrdsettings/SecuritySettings$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 586
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/jrdsettings/SecuritySettings$5$3;->this$1:Lcom/android/jrdsettings/SecuritySettings$5;

    iget-object v1, v1, Lcom/android/jrdsettings/SecuritySettings$5;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 587
    .local v0, gmailIntent:Landroid/content/Intent;
    const-string v1, "isloginIn"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 588
    iget-object v1, p0, Lcom/android/jrdsettings/SecuritySettings$5$3;->this$1:Lcom/android/jrdsettings/SecuritySettings$5;

    iget-object v1, v1, Lcom/android/jrdsettings/SecuritySettings$5;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 589
    return-void
.end method
