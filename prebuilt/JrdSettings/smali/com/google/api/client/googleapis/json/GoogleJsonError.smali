.class public Lcom/google/api/client/googleapis/json/GoogleJsonError;
.super Lcom/google/api/client/json/GenericJson;
.source "GoogleJsonError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;
    }
.end annotation


# instance fields
.field private code:I
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private errors:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;

    invoke-static {v0}, Lcom/google/api/client/util/Data;->nullOf(Ljava/lang/Class;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 59
    return-void
.end method

.method public static parse(Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpResponse;)Lcom/google/api/client/googleapis/json/GoogleJsonError;
    .locals 4
    .parameter "jsonFactory"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lcom/google/api/client/googleapis/json/JsonCParser;

    invoke-direct {v0, p0}, Lcom/google/api/client/googleapis/json/JsonCParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->getContentCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    const-class v3, Lcom/google/api/client/googleapis/json/GoogleJsonError;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/api/client/googleapis/json/JsonCParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/googleapis/json/GoogleJsonError;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError;->code:I

    return v0
.end method

.method public final getErrors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError;->errors:Ljava/util/List;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 222
    iput p1, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError;->code:I

    .line 223
    return-void
.end method

.method public final setErrors(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, errors:Ljava/util/List;,"Ljava/util/List<Lcom/google/api/client/googleapis/json/GoogleJsonError$ErrorInfo;>;"
    iput-object p1, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError;->errors:Ljava/util/List;

    .line 205
    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/api/client/googleapis/json/GoogleJsonError;->message:Ljava/lang/String;

    .line 241
    return-void
.end method
