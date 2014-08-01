.class Lcom/android/jrdsettings/LowMemoryStorage$5;
.super Ljava/lang/Object;
.source "LowMemoryStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/LowMemoryStorage;->refreshDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/LowMemoryStorage;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/LowMemoryStorage;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/jrdsettings/LowMemoryStorage$5;->this$0:Lcom/android/jrdsettings/LowMemoryStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 179
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/jrdsettings/LowMemoryStorage$5;->this$0:Lcom/android/jrdsettings/LowMemoryStorage;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 181
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
