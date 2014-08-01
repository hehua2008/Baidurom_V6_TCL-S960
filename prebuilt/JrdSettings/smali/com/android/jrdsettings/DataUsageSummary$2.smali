.class Lcom/android/jrdsettings/DataUsageSummary$2;
.super Landroid/database/ContentObserver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/DataUsageSummary;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/jrdsettings/DataUsageSummary$2;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 373
    const-string v0, "DataUsage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Data connection state changed(none gemini mode)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary$2;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mConnService:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/android/jrdsettings/DataUsageSummary;->access$400(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$2;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    const/4 v1, 0x0

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->access$500(Lcom/android/jrdsettings/DataUsageSummary;Z)V

    .line 376
    return-void
.end method
