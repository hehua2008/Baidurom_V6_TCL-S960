.class Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$CanvasCache;
.super Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;
.source "KeyguardWidgetOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CanvasCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal",
        "<",
        "Landroid/graphics/Canvas;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$CanvasCache;->this$1:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;

    invoke-direct {p0, p1}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;-><init>(Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;)V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 345
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$CanvasCache;->initialValue()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method
