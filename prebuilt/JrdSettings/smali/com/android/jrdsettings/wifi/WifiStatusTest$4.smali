.class Lcom/android/jrdsettings/wifi/WifiStatusTest$4;
.super Ljava/lang/Object;
.source "WifiStatusTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/wifi/WifiStatusTest;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/wifi/WifiStatusTest;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/wifi/WifiStatusTest;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WifiStatusTest$4;->this$0:Lcom/android/jrdsettings/wifi/WifiStatusTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiStatusTest$4;->this$0:Lcom/android/jrdsettings/wifi/WifiStatusTest;

    #getter for: Lcom/android/jrdsettings/wifi/WifiStatusTest;->mPingIpAddr:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/jrdsettings/wifi/WifiStatusTest;->access$1800(Lcom/android/jrdsettings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiStatusTest$4;->this$0:Lcom/android/jrdsettings/wifi/WifiStatusTest;

    #getter for: Lcom/android/jrdsettings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/wifi/WifiStatusTest;->access$1700(Lcom/android/jrdsettings/wifi/WifiStatusTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiStatusTest$4;->this$0:Lcom/android/jrdsettings/wifi/WifiStatusTest;

    #getter for: Lcom/android/jrdsettings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/jrdsettings/wifi/WifiStatusTest;->access$2000(Lcom/android/jrdsettings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiStatusTest$4;->this$0:Lcom/android/jrdsettings/wifi/WifiStatusTest;

    #getter for: Lcom/android/jrdsettings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/wifi/WifiStatusTest;->access$1900(Lcom/android/jrdsettings/wifi/WifiStatusTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiStatusTest$4;->this$0:Lcom/android/jrdsettings/wifi/WifiStatusTest;

    #getter for: Lcom/android/jrdsettings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/jrdsettings/wifi/WifiStatusTest;->access$2200(Lcom/android/jrdsettings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiStatusTest$4;->this$0:Lcom/android/jrdsettings/wifi/WifiStatusTest;

    #getter for: Lcom/android/jrdsettings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/wifi/WifiStatusTest;->access$2100(Lcom/android/jrdsettings/wifi/WifiStatusTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    return-void
.end method
