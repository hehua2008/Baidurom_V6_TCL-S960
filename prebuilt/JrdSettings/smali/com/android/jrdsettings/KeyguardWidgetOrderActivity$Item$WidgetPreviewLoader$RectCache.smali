.class Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$RectCache;
.super Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;
.source "KeyguardWidgetOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RectCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal",
        "<",
        "Landroid/graphics/Rect;",
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
    .line 363
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$RectCache;->this$1:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;

    invoke-direct {p0, p1}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;-><init>(Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;)V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 366
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$RectCache;->initialValue()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method
