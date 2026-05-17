.class public Lcom/game/app/WebAppInterface;
.super Ljava/lang/Object;
.source "WebAppInterface.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/game/app/WebAppInterface;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method public static printMsg(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 14
    const-string v0, "WebAppInterface"

    invoke-static {v0, p0}, Lcom/game/app/PrintMessage;->printMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public closeWebView()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 36
    const-string v0, "\u5173\u95ed\u754c\u9762"

    invoke-static {v0}, Lcom/game/app/WebAppInterface;->printMsg(Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/game/app/PayWebView;->closeWebView()V

    .line 38
    return-void
.end method

.method public getConfigInfo(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7528\u6237\u4fe1\u606f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game/app/WebAppInterface;->printMsg(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u8bbe\u5907\u53f7:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/game/app/GameInfomation;->GlobalDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game/app/WebAppInterface;->printMsg(Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/game/app/GameInfomation;->GlobalDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5145\u503c\u94fe\u63a5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game/app/WebAppInterface;->printMsg(Ljava/lang/String;)V

    .line 73
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "jsonData":Lorg/json/JSONObject;
    const-string v1, "payUrl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "payUrl":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 83
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 90
    .local v3, "browserIntent":Landroid/content/Intent;
    sget-object v4, Lcom/game/app/GameInfomation;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 95
    .end local v0    # "jsonData":Lorg/json/JSONObject;
    .end local v1    # "payUrl":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "browserIntent":Landroid/content/Intent;
    goto :goto_2

    .line 84
    .restart local v0    # "jsonData":Lorg/json/JSONObject;
    .restart local v1    # "payUrl":Ljava/lang/String;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    const-string v3, "\u65e0\u6548\u7684 URL\uff0c\u65e0\u6cd5\u542f\u52a8\u6d4f\u89c8\u5668"

    invoke-static {v3}, Lcom/game/app/WebAppInterface;->printMsg(Ljava/lang/String;)V

    .line 85
    return-void

    .line 77
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_3
    :goto_1
    const-string v2, "\u652f\u4ed8\u94fe\u63a5\u4e3a\u7a7a\u6216\u65e0\u6548\uff0c\u53d6\u6d88\u8df3\u8f6c"

    invoke-static {v2}, Lcom/game/app/WebAppInterface;->printMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 91
    .end local v0    # "jsonData":Lorg/json/JSONObject;
    .end local v1    # "payUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 94
    const-string v1, "JSON \u89e3\u6790\u9519\u8bef"

    invoke-static {v1}, Lcom/game/app/WebAppInterface;->printMsg(Ljava/lang/String;)V

    .line 96
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    return-void
.end method

.method public paySuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game/app/WebAppInterface;->printMsg(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/game/app/PayWebView;->closeWebView()V

    .line 104
    return-void
.end method

.method public reBackClose(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4f53\u9a8c\u6e38\u620f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/game/app/WebAppInterface;->printMsg(Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/game/app/PayWebView;->closeWebView()V

    .line 49
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "jsonData":Lorg/json/JSONObject;
    const-string v1, "retryPeriod"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 52
    .local v1, "retryPeriod":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u7b49\u5f85\u65f6\u95f4\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/game/app/WebAppInterface;->printMsg(Ljava/lang/String;)V

    .line 53
    mul-int/lit16 v2, v1, 0x3e8

    .line 54
    .local v2, "waitTime":I
    sget-boolean v3, Lcom/game/app/PrintMessage;->isDebug:Z

    if-eqz v3, :cond_0

    .line 55
    const/16 v2, 0x2710

    .line 58
    :cond_0
    invoke-static {v2}, Lcom/game/app/PayWebView;->retryWebviewActvity(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "jsonData":Lorg/json/JSONObject;
    .end local v1    # "retryPeriod":I
    .end local v2    # "waitTime":I
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 62
    const-string v1, "JSON \u89e3\u6790\u9519\u8bef"

    invoke-static {v1}, Lcom/game/app/WebAppInterface;->printMsg(Ljava/lang/String;)V

    .line 64
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
