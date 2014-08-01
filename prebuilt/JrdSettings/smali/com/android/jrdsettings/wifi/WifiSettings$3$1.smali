.class Lcom/android/jrdsettings/wifi/WifiSettings$3$1;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/wifi/WifiSettings$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/jrdsettings/wifi/WifiSettings$3;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/wifi/WifiSettings$3;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WifiSettings$3$1;->this$1:Lcom/android/jrdsettings/wifi/WifiSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 354
    const v0, 0x7f0b0318

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings$3$1;->this$1:Lcom/android/jrdsettings/wifi/WifiSettings$3;

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings$3;->this$0:Lcom/android/jrdsettings/wifi/WifiSettings;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/wifi/WifiSettings;->showDialog(I)V

    .line 356
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
