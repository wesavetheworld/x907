.class Lcom/oppo/widget/OppoAppSecurityPermissions$2;
.super Ljava/lang/Object;
.source "OppoAppSecurityPermissions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/widget/OppoAppSecurityPermissions;->showModifyPermDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/widget/OppoAppSecurityPermissions;


# direct methods
.method constructor <init>(Lcom/oppo/widget/OppoAppSecurityPermissions;)V
    .locals 0
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$2;->this$0:Lcom/oppo/widget/OppoAppSecurityPermissions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 768
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$2;->this$0:Lcom/oppo/widget/OppoAppSecurityPermissions;

    iget-object v0, v0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 769
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 770
    iget-object v0, p0, Lcom/oppo/widget/OppoAppSecurityPermissions$2;->this$0:Lcom/oppo/widget/OppoAppSecurityPermissions;

    iget-object v0, v0, Lcom/oppo/widget/OppoAppSecurityPermissions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 772
    :cond_0
    return-void
.end method
