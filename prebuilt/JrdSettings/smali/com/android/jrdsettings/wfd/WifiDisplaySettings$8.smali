.class Lcom/android/jrdsettings/wfd/WifiDisplaySettings$8;
.super Landroid/database/ContentObserver;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$8;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 765
    const-string v0, "WifiDisplaySettings"

    const-string v1, "ContentObserver, onChange()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$8;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #calls: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->update()V
    invoke-static {v0}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$1800(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)V

    .line 767
    return-void
.end method
