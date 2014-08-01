.class Lcom/android/jrdsettings/deviceinfo/Memory$9;
.super Ljava/lang/Object;
.source "Memory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/deviceinfo/Memory;
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
    .line 762
    iput-object p1, p0, Lcom/android/jrdsettings/deviceinfo/Memory$9;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Memory$9;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    #calls: Lcom/android/jrdsettings/deviceinfo/Memory;->dynamicShowDefaultWriteCategory()V
    invoke-static {v0}, Lcom/android/jrdsettings/deviceinfo/Memory;->access$300(Lcom/android/jrdsettings/deviceinfo/Memory;)V

    .line 765
    return-void
.end method
