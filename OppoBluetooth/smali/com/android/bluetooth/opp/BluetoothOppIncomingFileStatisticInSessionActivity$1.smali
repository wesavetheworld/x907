.class Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity$1;
.super Landroid/os/Handler;
.source "BluetoothOppIncomingFileStatisticInSessionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 214
    :goto_0
    return-void

    .line 208
    :pswitch_0
    const-string v0, "BluetoothOppIncomingFileStatisticInSessionActivity"

    const-string v1, "Received DISMISS_TIMEOUT_DIALOG msg."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileStatisticInSessionActivity;->finish()V

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
