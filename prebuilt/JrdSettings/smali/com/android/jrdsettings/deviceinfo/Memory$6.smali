.class Lcom/android/jrdsettings/deviceinfo/Memory$6;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/deviceinfo/Memory;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/jrdsettings/deviceinfo/Memory$6;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory$6;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    #calls: Lcom/android/jrdsettings/deviceinfo/Memory;->doMount()V
    invoke-static {v0}, Lcom/android/jrdsettings/deviceinfo/Memory;->access$1100(Lcom/android/jrdsettings/deviceinfo/Memory;)V

    .line 568
    return-void
.end method
