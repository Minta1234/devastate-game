.class Lcom/game/app/PayWebView$2;
.super Ljava/lang/Object;
.source "PayWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/app/PayWebView;->retryWebviewActvity(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 60
    invoke-static {}, Lcom/game/app/PayWebView;->access$000()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    invoke-static {}, Lcom/game/app/PayWebView;->startWebviewActvity()V

    goto :goto_0

    .line 64
    :cond_0
    const-string v0, "\u5b9a\u65f6\u5668\uff1a\u5b58\u5728\u5145\u503c\u754c\u9762"

    invoke-static {v0}, Lcom/game/app/PayWebView;->printMsg(Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void
.end method
