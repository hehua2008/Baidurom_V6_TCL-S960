.class Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$PaintCache;
.super Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;
.source "KeyguardWidgetOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PaintCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal",
        "<",
        "Landroid/graphics/Paint;",
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
    .line 349
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$PaintCache;->this$1:Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;

    invoke-direct {p0, p1}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;-><init>(Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader;)V

    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0}, Lcom/android/jrdsettings/KeyguardWidgetOrderActivity$Item$WidgetPreviewLoader$PaintCache;->initialValue()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method
