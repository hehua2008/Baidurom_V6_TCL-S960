.class Lcom/android/jrdsettings/CryptKeeper$2;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/CryptKeeper;->showFactoryReset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/CryptKeeper;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/jrdsettings/CryptKeeper$2;->this$0:Lcom/android/jrdsettings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/jrdsettings/CryptKeeper$2;->this$0:Lcom/android/jrdsettings/CryptKeeper;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 441
    return-void
.end method
