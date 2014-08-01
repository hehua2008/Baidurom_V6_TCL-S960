.class Lcom/android/jrdsettings/SecuritySettings$5$2;
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
    .line 591
    iput-object p1, p0, Lcom/android/jrdsettings/SecuritySettings$5$2;->this$1:Lcom/android/jrdsettings/SecuritySettings$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/jrdsettings/SecuritySettings$5$2;->this$1:Lcom/android/jrdsettings/SecuritySettings$5;

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings$5;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    #getter for: Lcom/android/jrdsettings/SecuritySettings;->mRemoteSecuritySwitchPreference:Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;
    invoke-static {v0}, Lcom/android/jrdsettings/SecuritySettings;->access$800(Lcom/android/jrdsettings/SecuritySettings;)Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;->setChecked(Z)V

    .line 594
    return-void
.end method
