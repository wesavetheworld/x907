.class Lcom/oppo/widget/OppoTimePicker$4;
.super Ljava/lang/Object;
.source "OppoTimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoTimePicker;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoTimePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/oppo/widget/OppoTimePicker$4;->this$0:Lcom/oppo/widget/OppoTimePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/16 v1, 0xc

    .line 207
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$4;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$300(Lcom/oppo/widget/OppoTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$4;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$000(Lcom/oppo/widget/OppoTimePicker;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$4;->this$0:Lcom/oppo/widget/OppoTimePicker;

    invoke-static {v0, v1}, Lcom/oppo/widget/OppoTimePicker;->access$012(Lcom/oppo/widget/OppoTimePicker;I)I

    .line 223
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/oppo/widget/OppoTimePicker$4;->this$0:Lcom/oppo/widget/OppoTimePicker;

    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$4;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$300(Lcom/oppo/widget/OppoTimePicker;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    #setter for: Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z
    invoke-static {v1, v0}, Lcom/oppo/widget/OppoTimePicker;->access$302(Lcom/oppo/widget/OppoTimePicker;Z)Z

    .line 224
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$4;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->mAmAndPmButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$700(Lcom/oppo/widget/OppoTimePicker;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$4;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->mIsAm:Z
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$300(Lcom/oppo/widget/OppoTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x10800e0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 229
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$4;->this$0:Lcom/oppo/widget/OppoTimePicker;

    #getter for: Lcom/oppo/widget/OppoTimePicker;->mCurrentHour:I
    invoke-static {v0}, Lcom/oppo/widget/OppoTimePicker;->access$000(Lcom/oppo/widget/OppoTimePicker;)I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/oppo/widget/OppoTimePicker$4;->this$0:Lcom/oppo/widget/OppoTimePicker;

    invoke-static {v0, v1}, Lcom/oppo/widget/OppoTimePicker;->access$020(Lcom/oppo/widget/OppoTimePicker;I)I

    goto :goto_0

    .line 223
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 224
    :cond_3
    const v0, 0x1080659

    goto :goto_2
.end method
