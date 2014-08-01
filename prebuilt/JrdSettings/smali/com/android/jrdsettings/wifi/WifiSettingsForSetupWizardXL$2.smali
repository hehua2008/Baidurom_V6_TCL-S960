.class Lcom/android/jrdsettings/wifi/WifiSettingsForSetupWizardXL$2;
.super Ljava/lang/Object;
.source "WifiSettingsForSetupWizardXL.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/wifi/WifiSettingsForSetupWizardXL;->onSaveNetwork(Landroid/net/wifi/WifiConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/wifi/WifiSettingsForSetupWizardXL;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/wifi/WifiSettingsForSetupWizardXL;)V
    .locals 0
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WifiSettingsForSetupWizardXL$2;->this$0:Lcom/android/jrdsettings/wifi/WifiSettingsForSetupWizardXL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 769
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 766
    return-void
.end method
