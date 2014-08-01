.class public Lcom/google/api/client/auth/jsontoken/JsonWebToken$Header;
.super Lcom/google/api/client/json/GenericJson;
.source "JsonWebToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/auth/jsontoken/JsonWebToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "typ"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Header;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/client/auth/jsontoken/JsonWebToken$Header;
    .locals 0
    .parameter "type"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/api/client/auth/jsontoken/JsonWebToken$Header;->type:Ljava/lang/String;

    .line 76
    return-object p0
.end method
