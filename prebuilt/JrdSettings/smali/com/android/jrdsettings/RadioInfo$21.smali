.class Lcom/android/jrdsettings/RadioInfo$21;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/RadioInfo;
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
    .line 1041
    iput-object p1, p0, Lcom/android/jrdsettings/RadioInfo$21;->this$0:Lcom/android/jrdsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/jrdsettings/RadioInfo$21;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #calls: Lcom/android/jrdsettings/RadioInfo;->refreshSmsc()V
    invoke-static {v0}, Lcom/android/jrdsettings/RadioInfo;->access$4300(Lcom/android/jrdsettings/RadioInfo;)V

    .line 1044
    return-void
.end method
