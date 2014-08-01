.class Lcom/android/jrdsettings/wifi/WifiSettings$4;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/wifi/WifiSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WifiSettings$4;->this$0:Lcom/android/jrdsettings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings$4;->this$0:Lcom/android/jrdsettings/wifi/WifiSettings;

    #calls: Lcom/android/jrdsettings/wifi/WifiSettings;->isPhone()Z
    invoke-static {v0}, Lcom/android/jrdsettings/wifi/WifiSettings;->access$300(Lcom/android/jrdsettings/wifi/WifiSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings$4;->this$0:Lcom/android/jrdsettings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/WifiSettings;->hasSimProblem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings$4;->this$0:Lcom/android/jrdsettings/wifi/WifiSettings;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/wifi/WifiSettings;->showDialog(I)V

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings$4;->this$0:Lcom/android/jrdsettings/wifi/WifiSettings;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0
.end method
