.class public Lcom/android/jrdsettings/deviceinfo/PercentageBarChart$Entry;
.super Ljava/lang/Object;
.source "PercentageBarChart.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/deviceinfo/PercentageBarChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/jrdsettings/deviceinfo/PercentageBarChart$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field public final order:I

.field public final paint:Landroid/graphics/Paint;

.field public final percentage:F


# direct methods
.method protected constructor <init>(IFLandroid/graphics/Paint;)V
    .locals 0
    .parameter "order"
    .parameter "percentage"
    .parameter "paint"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/android/jrdsettings/deviceinfo/PercentageBarChart$Entry;->order:I

    .line 49
    iput p2, p0, Lcom/android/jrdsettings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    .line 50
    iput-object p3, p0, Lcom/android/jrdsettings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    .line 51
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/jrdsettings/deviceinfo/PercentageBarChart$Entry;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/jrdsettings/deviceinfo/PercentageBarChart$Entry;->order:I

    iget v1, p1, Lcom/android/jrdsettings/deviceinfo/PercentageBarChart$Entry;->order:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    check-cast p1, Lcom/android/jrdsettings/deviceinfo/PercentageBarChart$Entry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/deviceinfo/PercentageBarChart$Entry;->compareTo(Lcom/android/jrdsettings/deviceinfo/PercentageBarChart$Entry;)I

    move-result v0

    return v0
.end method
