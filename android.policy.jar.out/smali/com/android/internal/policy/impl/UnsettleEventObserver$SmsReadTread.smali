.class Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;
.super Ljava/lang/Thread;
.source "UnsettleEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UnsettleEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmsReadTread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UnsettleEventObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 31

    .prologue
    .line 374
    const-string v28, ""

    .line 375
    .local v28, smsRcord:Ljava/lang/String;
    const-string v26, ""

    .line 377
    .local v26, phoneRcord:Ljava/lang/String;
    const-string v5, "select address from view_mmssms"

    .line 379
    .local v5, INBOX_SELECTION:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    iget-object v2, v2, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://mms-sms/view_mmssms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 383
    .local v12, c:Landroid/database/Cursor;
    const-string v9, "type = 3 AND new = 1"

    .line 385
    .local v9, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    iget-object v2, v2, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v2, "content://call_log/calls"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "number"

    aput-object v3, v8, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 388
    .local v25, phoneCursor:Landroid/database/Cursor;
    const/16 v27, 0x0

    .line 390
    .local v27, returnRcord:Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/UnsettleEventObserver;->mRMsName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->access$402(Lcom/android/internal/policy/impl/UnsettleEventObserver;Ljava/lang/String;)Ljava/lang/String;

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/UnsettleEventObserver;->mRMsCount:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->access$502(Lcom/android/internal/policy/impl/UnsettleEventObserver;I)I

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    #setter for: Lcom/android/internal/policy/impl/UnsettleEventObserver;->mSmsConut:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->access$602(Lcom/android/internal/policy/impl/UnsettleEventObserver;I)I

    .line 395
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_3

    .line 397
    const/16 v17, 0x0

    .line 398
    .local v17, isMsDisplayName:Z
    const/16 v22, 0x0

    .line 399
    .local v22, oldName:Ljava/lang/String;
    const/16 v21, 0x0

    .line 400
    .local v21, newName:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 402
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 405
    :cond_0
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    .line 407
    move/from16 v0, v16

    invoke-interface {v12, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 409
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 411
    if-eqz v22, :cond_1

    if-eqz v22, :cond_d

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 413
    :cond_1
    const-string v2, "StatusBar"

    const-string v3, "-------------- is msdisplay name is false ---------"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/16 v17, 0x0

    .line 424
    :cond_2
    if-eqz v17, :cond_13

    .line 426
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    iget-object v2, v2, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    iget-object v0, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 428
    .local v20, name:Ljava/lang/String;
    if-nez v20, :cond_12

    .line 430
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    iget-object v2, v2, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mContext:Landroid/content/Context;

    const v3, 0x1040560

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 450
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "unreadshortmessage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 457
    :goto_2
    const/16 v17, 0x0

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    move-object/from16 v0, v20

    #setter for: Lcom/android/internal/policy/impl/UnsettleEventObserver;->mRMsName:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->access$402(Lcom/android/internal/policy/impl/UnsettleEventObserver;Ljava/lang/String;)Ljava/lang/String;

    .line 466
    .end local v20           #name:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    #setter for: Lcom/android/internal/policy/impl/UnsettleEventObserver;->mRMsCount:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->access$502(Lcom/android/internal/policy/impl/UnsettleEventObserver;I)I

    .line 470
    .end local v16           #i:I
    .end local v17           #isMsDisplayName:Z
    .end local v21           #newName:Ljava/lang/String;
    .end local v22           #oldName:Ljava/lang/String;
    :cond_3
    if-eqz v25, :cond_6

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/UnsettleEventObserver;->mRPhName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->access$702(Lcom/android/internal/policy/impl/UnsettleEventObserver;Ljava/lang/String;)Ljava/lang/String;

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/UnsettleEventObserver;->mRPhCount:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->access$802(Lcom/android/internal/policy/impl/UnsettleEventObserver;I)I

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v3

    #setter for: Lcom/android/internal/policy/impl/UnsettleEventObserver;->mPhoneConut:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->access$902(Lcom/android/internal/policy/impl/UnsettleEventObserver;I)I

    .line 476
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_6

    .line 478
    const/16 v18, 0x0

    .line 479
    .local v18, isPhDisplayName:Z
    const/16 v22, 0x0

    .line 480
    .restart local v22       #oldName:Ljava/lang/String;
    const/16 v21, 0x0

    .line 481
    .restart local v21       #newName:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 483
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 486
    :cond_4
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_4
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_5

    .line 488
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 490
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 491
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 493
    const/16 v18, 0x0

    .line 501
    :cond_5
    if-eqz v18, :cond_1a

    .line 503
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    iget-object v2, v2, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    iget-object v0, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 505
    .restart local v20       #name:Ljava/lang/String;
    if-nez v20, :cond_19

    .line 507
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    iget-object v2, v2, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mContext:Landroid/content/Context;

    const v3, 0x1040560

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 531
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "unreadphone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 538
    :goto_6
    const/16 v18, 0x0

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    move-object/from16 v0, v20

    #setter for: Lcom/android/internal/policy/impl/UnsettleEventObserver;->mRPhName:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->access$702(Lcom/android/internal/policy/impl/UnsettleEventObserver;Ljava/lang/String;)Ljava/lang/String;

    .line 547
    .end local v20           #name:Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v3

    #setter for: Lcom/android/internal/policy/impl/UnsettleEventObserver;->mRPhCount:I
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->access$802(Lcom/android/internal/policy/impl/UnsettleEventObserver;I)I

    .line 564
    .end local v16           #i:I
    .end local v18           #isPhDisplayName:Z
    .end local v21           #newName:Ljava/lang/String;
    .end local v22           #oldName:Ljava/lang/String;
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 565
    new-instance v13, Ljava/io/File;

    const-string v2, "/data"

    const-string v3, "lockscreenevent.txt"

    invoke-direct {v13, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    .local v13, contentFile:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 569
    const/16 v29, 0x0

    .line 573
    .local v29, wordsOutPutStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v30, Ljava/io/FileOutputStream;

    move-object/from16 v0, v30

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v29           #wordsOutPutStream:Ljava/io/FileOutputStream;
    .local v30, wordsOutPutStream:Ljava/io/FileOutputStream;
    move-object/from16 v29, v30

    .line 580
    .end local v30           #wordsOutPutStream:Ljava/io/FileOutputStream;
    .restart local v29       #wordsOutPutStream:Ljava/io/FileOutputStream;
    :goto_8
    const/16 v23, 0x0

    .line 585
    .local v23, outPutWriter:Ljava/io/OutputStreamWriter;
    if-eqz v29, :cond_7

    .line 587
    :try_start_1
    new-instance v24, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v23           #outPutWriter:Ljava/io/OutputStreamWriter;
    .local v24, outPutWriter:Ljava/io/OutputStreamWriter;
    move-object/from16 v23, v24

    .line 595
    .end local v24           #outPutWriter:Ljava/io/OutputStreamWriter;
    .restart local v23       #outPutWriter:Ljava/io/OutputStreamWriter;
    :cond_7
    :goto_9
    if-eqz v27, :cond_8

    .line 599
    if-eqz v23, :cond_8

    .line 601
    :try_start_2
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStreamWriter;->flush()V

    .line 603
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 612
    :cond_8
    :goto_a
    if-eqz v29, :cond_9

    .line 616
    :try_start_3
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 625
    .end local v23           #outPutWriter:Ljava/io/OutputStreamWriter;
    .end local v29           #wordsOutPutStream:Ljava/io/FileOutputStream;
    :cond_9
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    #getter for: Lcom/android/internal/policy/impl/UnsettleEventObserver;->mCallorPhoneFlag:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->access$000(Lcom/android/internal/policy/impl/UnsettleEventObserver;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.oppo.shortmessage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 628
    if-eqz v12, :cond_a

    .line 629
    new-instance v19, Landroid/content/Intent;

    const-string v2, "com.oppo.lockscreeneventNO"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .local v19, mmsIntent:Landroid/content/Intent;
    const-string v2, "msmnotifytime"

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 631
    const-string v2, "pakeageName"

    const-string v3, "com.android.mms"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    const-string v2, "number"

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    iget-object v2, v2, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 651
    .end local v19           #mmsIntent:Landroid/content/Intent;
    :cond_a
    :goto_c
    if-eqz v25, :cond_b

    .line 653
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 656
    :cond_b
    if-eqz v12, :cond_c

    .line 658
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 660
    :cond_c
    return-void

    .line 418
    .end local v13           #contentFile:Ljava/io/File;
    .restart local v16       #i:I
    .restart local v17       #isMsDisplayName:Z
    .restart local v21       #newName:Ljava/lang/String;
    .restart local v22       #oldName:Ljava/lang/String;
    :cond_d
    const-string v2, "StatusBar"

    const-string v3, "----------- is msDisplay name is true ------"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/16 v17, 0x1

    .line 405
    :cond_e
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 435
    .restart local v20       #name:Ljava/lang/String;
    :cond_f
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    iget-object v2, v2, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mContext:Landroid/content/Context;

    const v3, 0x1040692

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_1

    .line 440
    :cond_10
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    iget-object v2, v2, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mContext:Landroid/content/Context;

    const v3, 0x1040693

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_1

    .line 447
    :cond_11
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_1

    .line 455
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "unreadshortmessage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_2

    .line 463
    .end local v20           #name:Ljava/lang/String;
    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "unreadshortmessage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 464
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 496
    .end local v17           #isMsDisplayName:Z
    .restart local v18       #isPhDisplayName:Z
    :cond_14
    const/16 v18, 0x1

    .line 486
    :cond_15
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 513
    .restart local v20       #name:Ljava/lang/String;
    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    iget-object v2, v2, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mContext:Landroid/content/Context;

    const v3, 0x1040692

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_5

    .line 519
    :cond_17
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 522
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    iget-object v2, v2, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mContext:Landroid/content/Context;

    const v3, 0x1040693

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_5

    .line 527
    :cond_18
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_5

    .line 536
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "unreadphone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_6

    .line 544
    .end local v20           #name:Ljava/lang/String;
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "unreadphone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 545
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 575
    .end local v16           #i:I
    .end local v18           #isPhDisplayName:Z
    .end local v21           #newName:Ljava/lang/String;
    .end local v22           #oldName:Ljava/lang/String;
    .restart local v13       #contentFile:Ljava/io/File;
    .restart local v29       #wordsOutPutStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v15

    .line 577
    .local v15, exc:Ljava/io/FileNotFoundException;
    const-string v2, "StatusBar"

    const-string v3, "saveImportContactsWordsToFile:create wordsOutPutStream failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 590
    .end local v15           #exc:Ljava/io/FileNotFoundException;
    .restart local v23       #outPutWriter:Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v14

    .line 592
    .local v14, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v14}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_9

    .line 606
    .end local v14           #e:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v14

    .line 608
    .local v14, e:Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 618
    .end local v14           #e:Ljava/io/IOException;
    :catch_3
    move-exception v14

    .line 620
    .restart local v14       #e:Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    .line 638
    .end local v14           #e:Ljava/io/IOException;
    .end local v23           #outPutWriter:Ljava/io/OutputStreamWriter;
    .end local v29           #wordsOutPutStream:Ljava/io/FileOutputStream;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    #getter for: Lcom/android/internal/policy/impl/UnsettleEventObserver;->mCallorPhoneFlag:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/policy/impl/UnsettleEventObserver;->access$000(Lcom/android/internal/policy/impl/UnsettleEventObserver;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.oppo.phone"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 641
    if-eqz v25, :cond_a

    .line 642
    new-instance v19, Landroid/content/Intent;

    const-string v2, "com.oppo.lockscreeneventNO"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    .restart local v19       #mmsIntent:Landroid/content/Intent;
    const-string v2, "pakeageName"

    const-string v3, "com.android.phone"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 644
    const-string v2, "callnotifytime"

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    const-string v2, "number"

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/UnsettleEventObserver$SmsReadTread;->this$0:Lcom/android/internal/policy/impl/UnsettleEventObserver;

    iget-object v2, v2, Lcom/android/internal/policy/impl/UnsettleEventObserver;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_c
.end method
