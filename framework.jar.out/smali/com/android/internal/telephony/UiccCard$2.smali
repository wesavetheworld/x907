.class Lcom/android/internal/telephony/UiccCard$2;
.super Landroid/os/Handler;
.source "UiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccCard;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mDestroyed:Z
    invoke-static {v0}, Lcom/android/internal/telephony/UiccCard;->access$200(Lcom/android/internal/telephony/UiccCard;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    const-string v0, "RIL_UiccCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] while being destroyed. Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/internal/telephony/UiccCard;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/UiccCard;->access$500(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/telephony/UiccCard;->access$300(Lcom/android/internal/telephony/UiccCard;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/telephony/UiccCard;->access$300(Lcom/android/internal/telephony/UiccCard;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_0

    .line 317
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/UiccCard$2;->this$0:Lcom/android/internal/telephony/UiccCard;

    const/4 v1, 0x1

    #calls: Lcom/android/internal/telephony/UiccCard;->onIccSwap(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/UiccCard;->access$400(Lcom/android/internal/telephony/UiccCard;Z)V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
