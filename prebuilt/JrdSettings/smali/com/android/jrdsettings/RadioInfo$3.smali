.class Lcom/android/jrdsettings/RadioInfo$3;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/RadioInfo;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 765
    iput-object p1, p0, Lcom/android/jrdsettings/RadioInfo$3;->this$0:Lcom/android/jrdsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/jrdsettings/RadioInfo$3;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #getter for: Lcom/android/jrdsettings/RadioInfo;->mPingIpAddr:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/jrdsettings/RadioInfo;->access$2400(Lcom/android/jrdsettings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/RadioInfo$3;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #getter for: Lcom/android/jrdsettings/RadioInfo;->mPingIpAddrResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/RadioInfo;->access$2300(Lcom/android/jrdsettings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    iget-object v0, p0, Lcom/android/jrdsettings/RadioInfo$3;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #getter for: Lcom/android/jrdsettings/RadioInfo;->mPingHostname:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/jrdsettings/RadioInfo;->access$2600(Lcom/android/jrdsettings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/RadioInfo$3;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #getter for: Lcom/android/jrdsettings/RadioInfo;->mPingHostnameResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/RadioInfo;->access$2500(Lcom/android/jrdsettings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 769
    iget-object v0, p0, Lcom/android/jrdsettings/RadioInfo$3;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #getter for: Lcom/android/jrdsettings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/jrdsettings/RadioInfo;->access$2800(Lcom/android/jrdsettings/RadioInfo;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/RadioInfo$3;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #getter for: Lcom/android/jrdsettings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/RadioInfo;->access$2700(Lcom/android/jrdsettings/RadioInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 770
    return-void
.end method
