.class Lcom/android/jrdsettings/CryptKeeper$5;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/CryptKeeper;->updateEmergencyCallButtonState()V
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
    .line 694
    iput-object p1, p0, Lcom/android/jrdsettings/CryptKeeper$5;->this$0:Lcom/android/jrdsettings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/jrdsettings/CryptKeeper$5;->this$0:Lcom/android/jrdsettings/CryptKeeper;

    #calls: Lcom/android/jrdsettings/CryptKeeper;->takeEmergencyCallAction()V
    invoke-static {v0}, Lcom/android/jrdsettings/CryptKeeper;->access$1100(Lcom/android/jrdsettings/CryptKeeper;)V

    .line 699
    return-void
.end method
