.class final Lcom/google/api/client/json/gson/GsonGenerator$StringNumber;
.super Ljava/lang/Number;
.source "GsonGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/json/gson/GsonGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringNumber"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final encodedValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "encodedValue"

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/google/api/client/json/gson/GsonGenerator$StringNumber;->encodedValue:Ljava/lang/String;

    .line 140
    return-void
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    .prologue
    .line 144
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 159
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/api/client/json/gson/GsonGenerator$StringNumber;->encodedValue:Ljava/lang/String;

    return-object v0
.end method
