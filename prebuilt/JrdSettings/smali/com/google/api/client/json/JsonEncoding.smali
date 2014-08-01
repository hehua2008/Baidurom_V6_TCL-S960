.class public final enum Lcom/google/api/client/json/JsonEncoding;
.super Ljava/lang/Enum;
.source "JsonEncoding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/api/client/json/JsonEncoding;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/client/json/JsonEncoding;

.field public static final enum UTF8:Lcom/google/api/client/json/JsonEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/google/api/client/json/JsonEncoding;

    const-string v1, "UTF8"

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/json/JsonEncoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/api/client/json/JsonEncoding;->UTF8:Lcom/google/api/client/json/JsonEncoding;

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/api/client/json/JsonEncoding;

    sget-object v1, Lcom/google/api/client/json/JsonEncoding;->UTF8:Lcom/google/api/client/json/JsonEncoding;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/api/client/json/JsonEncoding;->$VALUES:[Lcom/google/api/client/json/JsonEncoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/client/json/JsonEncoding;
    .locals 1
    .parameter "name"

    .prologue
    .line 28
    const-class v0, Lcom/google/api/client/json/JsonEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/json/JsonEncoding;

    return-object v0
.end method

.method public static values()[Lcom/google/api/client/json/JsonEncoding;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/api/client/json/JsonEncoding;->$VALUES:[Lcom/google/api/client/json/JsonEncoding;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/client/json/JsonEncoding;

    return-object v0
.end method
