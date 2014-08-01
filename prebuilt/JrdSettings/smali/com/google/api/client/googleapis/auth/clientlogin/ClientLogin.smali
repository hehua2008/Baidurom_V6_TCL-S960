.class public final Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;
.super Ljava/lang/Object;
.source "ClientLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$ErrorInfo;,
        Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$Response;
    }
.end annotation


# instance fields
.field public accountType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public applicationName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "source"
    .end annotation
.end field

.field public authTokenType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "service"
    .end annotation
.end field

.field public captchaAnswer:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "logincaptcha"
    .end annotation
.end field

.field public captchaToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "logintoken"
    .end annotation
.end field

.field public password:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Passwd"
    .end annotation
.end field

.field public serverUrl:Lcom/google/api/client/http/GenericUrl;

.field public transport:Lcom/google/api/client/http/HttpTransport;

.field public username:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "Email"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/google/api/client/http/GenericUrl;

    const-string v1, "https://www.google.com"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;->serverUrl:Lcom/google/api/client/http/GenericUrl;

    .line 149
    return-void
.end method


# virtual methods
.method public authenticate()Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$Response;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/api/client/googleapis/auth/clientlogin/ClientLoginResponseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 177
    iget-object v6, p0, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;->serverUrl:Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v6}, Lcom/google/api/client/http/GenericUrl;->clone()Lcom/google/api/client/http/GenericUrl;

    move-result-object v5

    .line 178
    .local v5, url:Lcom/google/api/client/http/GenericUrl;
    const-string v6, "/accounts/ClientLogin"

    invoke-virtual {v5, v6}, Lcom/google/api/client/http/GenericUrl;->appendRawPath(Ljava/lang/String;)V

    .line 179
    iget-object v6, p0, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;->transport:Lcom/google/api/client/http/HttpTransport;

    invoke-virtual {v6}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v6

    new-instance v7, Lcom/google/api/client/http/UrlEncodedContent;

    invoke-direct {v7, p0}, Lcom/google/api/client/http/UrlEncodedContent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v5, v7}, Lcom/google/api/client/http/HttpRequestFactory;->buildPostRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v3

    .line 181
    .local v3, request:Lcom/google/api/client/http/HttpRequest;
    sget-object v6, Lcom/google/api/client/googleapis/auth/clientlogin/AuthKeyValueParser;->INSTANCE:Lcom/google/api/client/googleapis/auth/clientlogin/AuthKeyValueParser;

    invoke-virtual {v3, v6}, Lcom/google/api/client/http/HttpRequest;->setParser(Lcom/google/api/client/util/ObjectParser;)V

    .line 182
    invoke-virtual {v3, v8}, Lcom/google/api/client/http/HttpRequest;->setContentLoggingLimit(I)Lcom/google/api/client/http/HttpRequest;

    .line 183
    invoke-virtual {v3, v8}, Lcom/google/api/client/http/HttpRequest;->setThrowExceptionOnExecuteError(Z)Lcom/google/api/client/http/HttpRequest;

    .line 184
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v4

    .line 186
    .local v4, response:Lcom/google/api/client/http/HttpResponse;
    invoke-virtual {v4}, Lcom/google/api/client/http/HttpResponse;->isSuccessStatusCode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 187
    const-class v6, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$Response;

    invoke-virtual {v4, v6}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$Response;

    return-object v6

    .line 190
    :cond_0
    const-class v6, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$ErrorInfo;

    invoke-virtual {v4, v6}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$ErrorInfo;

    .line 191
    .local v1, details:Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$ErrorInfo;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, detailString:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/api/client/http/HttpResponseException;->computeMessageBuffer(Lcom/google/api/client/http/HttpResponse;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 193
    .local v2, message:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 194
    sget-object v6, Lcom/google/api/client/util/StringUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_1
    new-instance v6, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLoginResponseException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v1, v7}, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLoginResponseException;-><init>(Lcom/google/api/client/http/HttpResponse;Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$ErrorInfo;Ljava/lang/String;)V

    throw v6
.end method
