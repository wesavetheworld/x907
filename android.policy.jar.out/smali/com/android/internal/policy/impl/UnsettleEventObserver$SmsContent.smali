.class Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsContent;
.super Landroid/database/ContentObserver;
.source "UnsettleEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UnsettleEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmsContent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/UnsettleEventObserver;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsContent;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    .line 216
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 217
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsContent;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    const-string v1, "com.oppo.shortmessage"

    #setter for: Lcom/android/internal/policy/impl/UnsettleEventObserver;->mCallorPhoneFlag:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->access$002(Lcom/android/internal/policy/impl/UnsettleEventObserver;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsContent;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/policy/impl/UnsettleEventObserver;->mNotifyAble:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->access$102(Lcom/android/internal/policy/impl/UnsettleEventObserver;Z)Z

    .line 225
    new-instance v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsContent;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;-><init>(Lcom/android/internal/policy/impl/UnsettleEventObserver;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->start()V

    .line 226
    return-void
.end method
