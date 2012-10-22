.class public Lcom/oppo/widget/OppoDatePicker;
.super Landroid/widget/FrameLayout;
.source "OppoDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final EARLIEST_YEAR:I = 0x7b2

.field private static final TAG:Ljava/lang/String; = "OppoDatePicker"

.field public static mCurrentDay:I

.field public static mCurrentMonth:I

.field public static mCurrentYear:I

.field public static mIsChineseDate:Ljava/lang/Boolean;

.field public static mIsLeapMonthFlag:Ljava/lang/Boolean;

.field public static mIsSelectStatus:Z


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private final debug:Z

.field private mButtonChineseYear:Landroid/widget/Button;

.field private mButtonLeft:Landroid/widget/Button;

.field private mButtonNewYear:Landroid/widget/Button;

.field private mButtonRight:Landroid/widget/Button;

.field private mButtonSelect:Landroid/widget/Button;

.field private mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mCourrentChineseMonthDayNumber:I

.field private mCourrentNewMonthDayNumber:I

.field private mCreationOrientation:I

.field private mDateDisplayTextView:Landroid/widget/TextView;

.field private mDateView:Lcom/oppo/widget/OppoDateView;

.field private mEndYear:I

.field private mIsCalendarDatePicker:Z

.field private mIsHideDisplayDate:Z

.field private mIsLeapYear:Z

.field private mIsMaxMonthLeap:Z

.field private mIsOnlySolarCalendar:Z

.field private mLeapMonth:I

.field private mMaxDay:I

.field private mMaxMonth:I

.field private mMinDay:I

.field private mMinMonth:I

.field private mMonthView:Lcom/oppo/widget/OppoMonthView;

.field private mMouthImview:Landroid/widget/ImageView;

.field private mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

.field private mStartYear:I

.field private mYearView:Lcom/oppo/widget/OppoYearView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    sput v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 50
    sput v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 51
    sput v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 68
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    .line 69
    sput-boolean v1, Lcom/oppo/widget/OppoDatePicker;->mIsSelectStatus:Z

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/oppo/widget/OppoDatePicker;->mIsLeapMonthFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oppo/widget/OppoDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oppo/widget/OppoDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v10, 0x780

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput-boolean v7, p0, Lcom/oppo/widget/OppoDatePicker;->debug:Z

    .line 53
    iput v7, p0, Lcom/oppo/widget/OppoDatePicker;->mCourrentNewMonthDayNumber:I

    .line 54
    iput v7, p0, Lcom/oppo/widget/OppoDatePicker;->mCourrentChineseMonthDayNumber:I

    .line 56
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    .line 57
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    .line 58
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    .line 60
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonChineseYear:Landroid/widget/Button;

    .line 61
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonNewYear:Landroid/widget/Button;

    .line 62
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    .line 63
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    .line 64
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    .line 66
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mMouthImview:Landroid/widget/ImageView;

    .line 73
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 78
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mDateDisplayTextView:Landroid/widget/TextView;

    .line 79
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    .line 80
    iput-boolean v7, p0, Lcom/oppo/widget/OppoDatePicker;->mIsHideDisplayDate:Z

    .line 82
    iput v10, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    .line 83
    const/16 v5, 0x7f4

    iput v5, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    .line 96
    iput-boolean v7, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    .line 98
    iput-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->audioManager:Landroid/media/AudioManager;

    .line 129
    iput-object p1, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    .line 136
    sget-object v5, Lcom/android/internal/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v5, v7, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 137
    .local v1, attrArray:Landroid/content/res/TypedArray;
    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    .line 140
    .local v4, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 142
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 144
    .local v0, attr:I
    packed-switch v0, :pswitch_data_0

    .line 140
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :pswitch_0
    invoke-virtual {v1, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    goto :goto_1

    .line 157
    .end local v0           #attr:I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    .end local v2           #i:I
    .end local v4           #n:I
    :cond_1
    new-instance v5, Lcom/oppo/util/ChineseDateAndSolarDate;

    invoke-direct {v5}, Lcom/oppo/util/ChineseDateAndSolarDate;-><init>()V

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    .line 162
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mConfiguration:Landroid/content/res/Configuration;

    .line 163
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/oppo/widget/OppoDatePicker;->mCreationOrientation:I

    .line 165
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 167
    .local v3, inflater:Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/oppo/widget/OppoDatePicker;->mCreationOrientation:I

    iget-object v6, p0, Lcom/oppo/widget/OppoDatePicker;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    .line 169
    const v5, 0x109003b

    invoke-virtual {v3, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 188
    :goto_2
    const v5, 0x10202e4

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mMouthImview:Landroid/widget/ImageView;

    .line 189
    const v5, 0x10202dc

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mDateDisplayTextView:Landroid/widget/TextView;

    .line 191
    const v5, 0x10202e2

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoDateView;

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    .line 192
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    new-instance v6, Lcom/oppo/widget/OppoDatePicker$1;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoDatePicker$1;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v5, v6}, Lcom/oppo/widget/OppoDateView;->setOnChangeListener(Lcom/oppo/widget/OppoDateView$OnChangedListener;)V

    .line 230
    const v5, 0x10202e0

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoYearView;

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    .line 231
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    new-instance v6, Lcom/oppo/widget/OppoDatePicker$2;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoDatePicker$2;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v5, v6}, Lcom/oppo/widget/OppoYearView;->setOnChangeListener(Lcom/oppo/widget/OppoYearView$OnChangedListener;)V

    .line 263
    const v5, 0x10202e1

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oppo/widget/OppoMonthView;

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    .line 264
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    new-instance v6, Lcom/oppo/widget/OppoDatePicker$3;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoDatePicker$3;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v5, v6}, Lcom/oppo/widget/OppoMonthView;->setOnChangeListener(Lcom/oppo/widget/OppoMonthView$OnChangedListener;)V

    .line 350
    const v5, 0x10202dd

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    .line 351
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setFadeEffectEnabled(Z)V

    .line 352
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 353
    iget-boolean v5, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v5, :cond_2

    .line 355
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 358
    :cond_2
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    new-instance v6, Lcom/oppo/widget/OppoDatePicker$4;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoDatePicker$4;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    const v5, 0x10202de

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    .line 418
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setFadeEffectEnabled(Z)V

    .line 419
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 420
    iget-boolean v5, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v5, :cond_3

    .line 422
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 425
    :cond_3
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    new-instance v6, Lcom/oppo/widget/OppoDatePicker$5;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoDatePicker$5;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    const v5, 0x10202df

    invoke-virtual {p0, v5}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    .line 474
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setFadeEffectEnabled(Z)V

    .line 476
    iget-boolean v5, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v5, :cond_4

    .line 478
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 481
    :cond_4
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    new-instance v6, Lcom/oppo/widget/OppoDatePicker$6;

    invoke-direct {v6, p0}, Lcom/oppo/widget/OppoDatePicker$6;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    const/16 v6, 0x1e

    invoke-virtual {v5, v7, v6}, Lcom/oppo/widget/OppoDateView;->setRange(II)V

    .line 570
    iget-object v5, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    const/16 v6, 0xc

    invoke-virtual {v5, v8, v6}, Lcom/oppo/widget/OppoMonthView;->setRange(II)V

    .line 571
    const/16 v5, 0x7f4

    invoke-virtual {p0, v10, v5}, Lcom/oppo/widget/OppoDatePicker;->setYearRange(II)Z

    .line 573
    return-void

    .line 178
    :cond_5
    iget-boolean v5, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v5, :cond_6

    .line 180
    const v5, 0x109003b

    invoke-virtual {v3, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_2

    .line 184
    :cond_6
    const v5, 0x109003e

    invoke-virtual {v3, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_2

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/oppo/widget/OppoDatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    return v0
.end method

.method static synthetic access$100(Lcom/oppo/widget/OppoDatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMinMonth:I

    return v0
.end method

.method static synthetic access$1000(Lcom/oppo/widget/OppoDatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDay:I

    return v0
.end method

.method static synthetic access$1100(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/util/ChineseDateAndSolarDate;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoMonthView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/oppo/widget/OppoDatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/oppo/widget/OppoDatePicker;->mCourrentNewMonthDayNumber:I

    return p1
.end method

.method static synthetic access$1400(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMouthImview:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/oppo/widget/OppoDatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/oppo/widget/OppoDatePicker;->mCourrentChineseMonthDayNumber:I

    return p1
.end method

.method static synthetic access$1600(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoYearView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oppo/widget/OppoDatePicker;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oppo/widget/OppoDatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDay:I

    return v0
.end method

.method static synthetic access$300(Lcom/oppo/widget/OppoDatePicker;)Lcom/oppo/widget/OppoDateView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oppo/widget/OppoDatePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/oppo/widget/OppoDatePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsLeapYear:Z

    return v0
.end method

.method static synthetic access$502(Lcom/oppo/widget/OppoDatePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDatePicker;->mIsLeapYear:Z

    return p1
.end method

.method static synthetic access$600(Lcom/oppo/widget/OppoDatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I

    return v0
.end method

.method static synthetic access$700(Lcom/oppo/widget/OppoDatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mLeapMonth:I

    return v0
.end method

.method static synthetic access$702(Lcom/oppo/widget/OppoDatePicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/oppo/widget/OppoDatePicker;->mLeapMonth:I

    return p1
.end method

.method static synthetic access$800(Lcom/oppo/widget/OppoDatePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsMaxMonthLeap:Z

    return v0
.end method

.method static synthetic access$900(Lcom/oppo/widget/OppoDatePicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    return v0
.end method

.method private checkDate(IIIZ)Z
    .locals 14
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isChineseDate"

    .prologue
    .line 1049
    if-nez p4, :cond_4

    .line 1051
    iget v2, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    const/16 v3, 0xc

    const/16 v4, 0x1f

    add-int/lit8 v6, p2, 0x1

    move-object v1, p0

    move v5, p1

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1053
    const/4 v1, 0x0

    .line 1136
    :goto_0
    return v1

    .line 1055
    :cond_0
    add-int/lit8 v3, p2, 0x1

    iget v5, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    iget v6, p0, Lcom/oppo/widget/OppoDatePicker;->mMinMonth:I

    iget v7, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDay:I

    move-object v1, p0

    move v2, p1

    move/from16 v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1057
    const/4 v1, 0x0

    goto :goto_0

    .line 1059
    :cond_1
    if-ltz p2, :cond_3

    const/16 v1, 0xb

    move/from16 v0, p2

    if-gt v0, v1, :cond_3

    .line 1061
    if-lez p3, :cond_2

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetSolarMonthDays(II)I

    move-result v1

    move/from16 v0, p3

    if-gt v0, v1, :cond_2

    .line 1063
    const/4 v1, 0x1

    goto :goto_0

    .line 1067
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1072
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 1077
    :cond_4
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    iget v2, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    invoke-virtual {v1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v13

    .line 1078
    .local v13, maxYearLeapMonth:I
    iget v3, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I

    .line 1079
    .local v3, maxMonth:I
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    invoke-virtual {v1, p1}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v11

    .line 1080
    .local v11, leapMonth:I
    if-eqz v13, :cond_6

    iget-boolean v1, p0, Lcom/oppo/widget/OppoDatePicker;->mIsMaxMonthLeap:Z

    if-nez v1, :cond_5

    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I

    if-le v1, v13, :cond_6

    .line 1081
    :cond_5
    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I

    add-int/lit8 v3, v1, 0x1

    .line 1084
    :cond_6
    if-nez v11, :cond_b

    .line 1086
    iget v2, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    iget v4, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDay:I

    add-int/lit8 v6, p2, 0x1

    move-object v1, p0

    move v5, p1

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 1088
    const/4 v1, 0x0

    goto :goto_0

    .line 1090
    :cond_7
    add-int/lit8 v6, p2, 0x1

    iget v8, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v4, p0

    move v5, p1

    move/from16 v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 1092
    const/4 v1, 0x0

    goto :goto_0

    .line 1095
    :cond_8
    if-ltz p2, :cond_a

    const/16 v1, 0xb

    move/from16 v0, p2

    if-gt v0, v1, :cond_a

    .line 1097
    if-lez p3, :cond_9

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChMonthDays(II)I

    move-result v1

    move/from16 v0, p3

    if-gt v0, v1, :cond_9

    .line 1099
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1103
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1108
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1113
    :cond_b
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChMonthDays(II)I

    move-result v12

    .line 1115
    .local v12, lunarDayOfMonth:I
    if-ltz p2, :cond_f

    const/16 v1, 0xc

    move/from16 v0, p2

    if-gt v0, v1, :cond_f

    .line 1117
    iget v2, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    iget v4, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDay:I

    add-int/lit8 v6, p2, 0x1

    move-object v1, p0

    move v5, p1

    move/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 1119
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1121
    :cond_c
    add-int/lit8 v6, p2, 0x1

    iget v8, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v4, p0

    move v5, p1

    move/from16 v7, p3

    invoke-direct/range {v4 .. v10}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 1123
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1125
    :cond_d
    if-lez p3, :cond_e

    move/from16 v0, p3

    if-gt v0, v12, :cond_e

    .line 1127
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1131
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1136
    :cond_f
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private compareDate(IIIIII)Z
    .locals 2
    .parameter "y"
    .parameter "m"
    .parameter "d"
    .parameter "y1"
    .parameter "m1"
    .parameter "d1"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1143
    if-le p4, p1, :cond_1

    .line 1165
    :cond_0
    :goto_0
    return v0

    .line 1147
    :cond_1
    if-ge p4, p1, :cond_2

    move v0, v1

    .line 1149
    goto :goto_0

    .line 1151
    :cond_2
    if-gt p5, p2, :cond_0

    .line 1155
    if-ge p5, p2, :cond_3

    move v0, v1

    .line 1157
    goto :goto_0

    .line 1159
    :cond_3
    if-gt p6, p3, :cond_0

    move v0, v1

    .line 1165
    goto :goto_0
.end method

.method private onTimeChanged()V
    .locals 4

    .prologue
    .line 756
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getCurrentYear()I

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getCurrentMonth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getCurrentDay()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;->onDateChanged(Lcom/oppo/widget/OppoDatePicker;III)V

    .line 761
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getCurrentIsChineseDate()Z

    move-result v1

    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->getCurrentIsLeapMonthFlag()Z

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;->onChineseDateChanged(Lcom/oppo/widget/OppoDatePicker;ZZ)V

    .line 764
    :cond_0
    return-void
.end method

.method private setDateRange()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/16 v12, 0x1f

    const/16 v11, 0xc

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 677
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsOnlySolarCalendar:Z

    if-eqz v0, :cond_4

    .line 678
    iput v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMinMonth:I

    .line 679
    iput v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDay:I

    .line 706
    :goto_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    invoke-virtual {v0, v1}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v9

    .line 707
    .local v9, maxYearLeapMonth:I
    iget v8, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I

    .line 708
    .local v8, maxMonth:I
    if-eqz v9, :cond_1

    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsMaxMonthLeap:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I

    if-le v0, v9, :cond_1

    .line 709
    :cond_0
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I

    add-int/lit8 v8, v0, 0x1

    .line 711
    :cond_1
    sget-object v0, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 712
    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    sget v4, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v5, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    sget v6, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v0

    if-nez v0, :cond_2

    .line 714
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    sput v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 715
    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 716
    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 719
    :cond_2
    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    iget v3, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDay:I

    sget v4, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v5, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    sget v6, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    move-object v0, p0

    move v2, v8

    invoke-direct/range {v0 .. v6}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 721
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    sput v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 722
    sput v8, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 723
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDay:I

    sput v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 748
    :cond_3
    :goto_1
    sget v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/widget/OppoDatePicker;->updateSpinners(III)V

    .line 749
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->upDateDisplayData()V

    .line 750
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->onTimeChanged()V

    .line 751
    return-void

    .line 681
    .end local v8           #maxMonth:I
    .end local v9           #maxYearLeapMonth:I
    :cond_4
    const/4 v10, 0x0

    .line 682
    .local v10, result:[I
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    invoke-virtual {v0, v1, v2, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->ChineseDateToSunDate(III)[I

    move-result-object v10

    .line 683
    if-eqz v10, :cond_5

    array-length v0, v10

    if-le v0, v3, :cond_5

    .line 684
    aget v0, v10, v2

    iput v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMinMonth:I

    .line 685
    aget v0, v10, v3

    iput v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDay:I

    .line 687
    :cond_5
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    invoke-virtual {v0, v1, v11, v12}, Lcom/oppo/util/ChineseDateAndSolarDate;->SunDateToChineseDate(III)[I

    move-result-object v10

    .line 688
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    aget v1, v10, v4

    invoke-virtual {v0, v1}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v7

    .line 690
    .local v7, leap:I
    if-eqz v7, :cond_7

    aget v0, v10, v2

    if-le v0, v7, :cond_7

    .line 691
    aget v0, v10, v2

    add-int/lit8 v0, v0, -0x1

    if-ne v7, v0, :cond_6

    .line 692
    iput-boolean v2, p0, Lcom/oppo/widget/OppoDatePicker;->mIsMaxMonthLeap:Z

    .line 696
    :goto_2
    aget v0, v10, v2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I

    .line 703
    :goto_3
    aget v0, v10, v3

    iput v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxDay:I

    goto/16 :goto_0

    .line 694
    :cond_6
    iput-boolean v4, p0, Lcom/oppo/widget/OppoDatePicker;->mIsMaxMonthLeap:Z

    goto :goto_2

    .line 700
    :cond_7
    aget v0, v10, v2

    iput v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMaxMonth:I

    goto :goto_3

    .line 726
    .end local v7           #leap:I
    .end local v10           #result:[I
    .restart local v8       #maxMonth:I
    .restart local v9       #maxYearLeapMonth:I
    :cond_8
    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    iget v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMinMonth:I

    iget v3, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDay:I

    sget v4, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v5, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    sget v6, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v0

    if-nez v0, :cond_9

    .line 728
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    sput v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 729
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMinMonth:I

    sput v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 730
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMinDay:I

    sput v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 733
    :cond_9
    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    sget v4, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v5, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    sget v6, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    move-object v0, p0

    move v2, v11

    move v3, v12

    invoke-direct/range {v0 .. v6}, Lcom/oppo/widget/OppoDatePicker;->compareDate(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 735
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    sput v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 736
    sput v11, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 737
    sput v12, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    goto/16 :goto_1
.end method

.method private updateSpinners(III)V
    .locals 6
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 890
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    invoke-virtual {v1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v0

    .line 892
    .local v0, leapMonth:I
    sget-object v1, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 894
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 895
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 896
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    const v2, 0x1040620

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 905
    :goto_0
    sget-boolean v1, Lcom/oppo/widget/OppoDatePicker;->mIsSelectStatus:Z

    if-eqz v1, :cond_0

    .line 907
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 908
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 909
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 911
    :cond_0
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    iget v3, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoYearView;->setCurrentPos(I)V

    .line 916
    sget-object v1, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 918
    if-lt p3, v0, :cond_2

    if-eqz v0, :cond_2

    .line 920
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoMonthView;->setCurrentPos(I)V

    .line 932
    :goto_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoDateView;->setCurrentPos(I)V

    .line 934
    return-void

    .line 900
    :cond_1
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 901
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 902
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    const v2, 0x1040621

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 924
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoMonthView;->setCurrentPos(I)V

    goto :goto_1

    .line 929
    :cond_3
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoMonthView;->setCurrentPos(I)V

    goto :goto_1
.end method


# virtual methods
.method public getCurrentDay()I
    .locals 1

    .prologue
    .line 1034
    sget v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    return v0
.end method

.method public getCurrentIsChineseDate()Z
    .locals 1

    .prologue
    .line 1039
    sget-object v0, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getCurrentIsLeapMonthFlag()Z
    .locals 1

    .prologue
    .line 1044
    sget-object v0, Lcom/oppo/widget/OppoDatePicker;->mIsLeapMonthFlag:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getCurrentMonth()I
    .locals 1

    .prologue
    .line 1029
    sget v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    return v0
.end method

.method public getCurrentYear()I
    .locals 1

    .prologue
    .line 1024
    sget v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    return v0
.end method

.method public hideSwitchButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1019
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1020
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1021
    return-void
.end method

.method public init(IIILjava/lang/Boolean;ZZLcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V
    .locals 4
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isChineseDate"
    .parameter "isSelectStatus"
    .parameter "isHideDisplayDate"
    .parameter "onDateChangedListener"

    .prologue
    .line 836
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/oppo/widget/OppoDatePicker;->checkDate(IIIZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 838
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 839
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 840
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    .line 841
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 842
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    .line 843
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 847
    .end local v0           #c:Ljava/util/Calendar;
    :cond_0
    sput p1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 848
    iput-boolean p6, p0, Lcom/oppo/widget/OppoDatePicker;->mIsHideDisplayDate:Z

    .line 849
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    invoke-virtual {v2, v3}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v1

    .line 853
    .local v1, leapMonth:I
    iget-boolean v2, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v2, :cond_1

    .line 855
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    iget-boolean v3, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoYearView;->setCalendarMode(Z)V

    .line 856
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    iget-boolean v3, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoMonthView;->setCalendarMode(Z)V

    .line 857
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    iget-boolean v3, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoDateView;->setCalendarMode(Z)V

    .line 865
    :cond_1
    add-int/lit8 v2, p2, 0x1

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 867
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 869
    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v1, :cond_2

    if-eqz v1, :cond_2

    .line 871
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMouthImview:Landroid/widget/ImageView;

    const v3, 0x108050e

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 875
    :cond_2
    sput p3, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 876
    sput-object p4, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    .line 877
    sput-boolean p5, Lcom/oppo/widget/OppoDatePicker;->mIsSelectStatus:Z

    .line 878
    iput-object p7, p0, Lcom/oppo/widget/OppoDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

    .line 884
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDatePicker;->updateSpinners(III)V

    .line 885
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->upDateDisplayData()V

    .line 886
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfig"

    .prologue
    const v5, 0x109003b

    const/4 v1, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1183
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1184
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDateView;->setOnChangeListener(Lcom/oppo/widget/OppoDateView$OnChangedListener;)V

    .line 1185
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoYearView;->setOnChangeListener(Lcom/oppo/widget/OppoYearView$OnChangedListener;)V

    .line 1186
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoMonthView;->setOnChangeListener(Lcom/oppo/widget/OppoMonthView$OnChangedListener;)V

    .line 1187
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->removeAllViews()V

    .line 1188
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/oppo/widget/OppoDatePicker;->mCreationOrientation:I

    .line 1195
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 1197
    .local v8, inflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mCreationOrientation:I

    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 1199
    invoke-virtual {v8, v5, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1218
    :goto_0
    const v0, 0x10202e4

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMouthImview:Landroid/widget/ImageView;

    .line 1219
    const v0, 0x10202dc

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mDateDisplayTextView:Landroid/widget/TextView;

    .line 1221
    const v0, 0x10202e2

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoDateView;

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    .line 1222
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    new-instance v1, Lcom/oppo/widget/OppoDatePicker$7;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoDatePicker$7;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoDateView;->setOnChangeListener(Lcom/oppo/widget/OppoDateView$OnChangedListener;)V

    .line 1256
    const v0, 0x10202e0

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoYearView;

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    .line 1257
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    new-instance v1, Lcom/oppo/widget/OppoDatePicker$8;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoDatePicker$8;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoYearView;->setOnChangeListener(Lcom/oppo/widget/OppoYearView$OnChangedListener;)V

    .line 1288
    const v0, 0x10202e1

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/widget/OppoMonthView;

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    .line 1289
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    new-instance v1, Lcom/oppo/widget/OppoDatePicker$9;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoDatePicker$9;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v0, v1}, Lcom/oppo/widget/OppoMonthView;->setOnChangeListener(Lcom/oppo/widget/OppoMonthView$OnChangedListener;)V

    .line 1375
    const v0, 0x10202dd

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    .line 1376
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFadeEffectEnabled(Z)V

    .line 1377
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1378
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1383
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonLeft:Landroid/widget/Button;

    new-instance v1, Lcom/oppo/widget/OppoDatePicker$10;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoDatePicker$10;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1442
    const v0, 0x10202de

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    .line 1443
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFadeEffectEnabled(Z)V

    .line 1444
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1445
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v0, :cond_1

    .line 1447
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1450
    :cond_1
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonRight:Landroid/widget/Button;

    new-instance v1, Lcom/oppo/widget/OppoDatePicker$11;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoDatePicker$11;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1498
    const v0, 0x10202df

    invoke-virtual {p0, v0}, Lcom/oppo/widget/OppoDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    .line 1499
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFadeEffectEnabled(Z)V

    .line 1501
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v0, :cond_2

    .line 1503
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1506
    :cond_2
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    new-instance v1, Lcom/oppo/widget/OppoDatePicker$12;

    invoke-direct {v1, p0}, Lcom/oppo/widget/OppoDatePicker$12;-><init>(Lcom/oppo/widget/OppoDatePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1593
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    const/16 v1, 0x1e

    invoke-virtual {v0, v2, v1}, Lcom/oppo/widget/OppoDateView;->setRange(II)V

    .line 1594
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    const/16 v1, 0xc

    invoke-virtual {v0, v3, v1}, Lcom/oppo/widget/OppoMonthView;->setRange(II)V

    .line 1595
    iget v0, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    iget v1, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    invoke-virtual {p0, v0, v1}, Lcom/oppo/widget/OppoDatePicker;->setYearRange(II)Z

    .line 1597
    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v2, v0, -0x1

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    sget-object v4, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    sget-boolean v5, Lcom/oppo/widget/OppoDatePicker;->mIsSelectStatus:Z

    iget-boolean v6, p0, Lcom/oppo/widget/OppoDatePicker;->mIsHideDisplayDate:Z

    iget-object v7, p0, Lcom/oppo/widget/OppoDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/oppo/widget/OppoDatePicker;->init(IIILjava/lang/Boolean;ZZLcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V

    .line 1600
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->hideSwitchButton()V

    .line 1601
    return-void

    .line 1208
    :cond_3
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v0, :cond_4

    .line 1210
    invoke-virtual {v8, v5, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    .line 1214
    :cond_4
    const v0, 0x109003e

    invoke-virtual {v8, v0, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0
.end method

.method public playSoundEffect()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->audioManager:Landroid/media/AudioManager;

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->audioManager:Landroid/media/AudioManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 587
    return-void
.end method

.method public reFreshSelf()V
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoYearView;->reFreshSelf()V

    .line 1173
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoMonthView;->reFreshSelf()V

    .line 1174
    iget-object v0, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    invoke-virtual {v0}, Lcom/oppo/widget/OppoDateView;->reFreshSelf()V

    .line 1175
    return-void
.end method

.method public reInitUi(IIIZZZZLcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V
    .locals 3
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"
    .parameter "isChineseDate"
    .parameter "isLeapMonth"
    .parameter "isSelectStatus"
    .parameter "isHideDisplayDate"
    .parameter "onDateChangedListener"

    .prologue
    .line 779
    sput p1, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 780
    iput-boolean p7, p0, Lcom/oppo/widget/OppoDatePicker;->mIsHideDisplayDate:Z

    .line 781
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    invoke-virtual {v1, v2}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v0

    .line 782
    .local v0, leapMonth:I
    iget-boolean v1, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    if-eqz v1, :cond_0

    .line 784
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    iget-boolean v2, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoYearView;->setCalendarMode(Z)V

    .line 785
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    iget-boolean v2, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoMonthView;->setCalendarMode(Z)V

    .line 786
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    iget-boolean v2, p0, Lcom/oppo/widget/OppoDatePicker;->mIsCalendarDatePicker:Z

    invoke-virtual {v1, v2}, Lcom/oppo/widget/OppoDateView;->setCalendarMode(Z)V

    .line 795
    :cond_0
    add-int/lit8 v1, p2, 0x1

    sput v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 797
    if-eqz p4, :cond_1

    .line 799
    sget v1, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v1, v1, -0x1

    if-ne v1, v0, :cond_2

    if-eqz v0, :cond_2

    .line 801
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMouthImview:Landroid/widget/ImageView;

    const v2, 0x108050e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 809
    :cond_1
    :goto_0
    sput p3, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 810
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    .line 811
    sput-boolean p6, Lcom/oppo/widget/OppoDatePicker;->mIsSelectStatus:Z

    .line 812
    iput-object p8, p0, Lcom/oppo/widget/OppoDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

    .line 814
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/widget/OppoDatePicker;->updateSpinners(III)V

    .line 815
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->upDateDisplayData()V

    .line 816
    return-void

    .line 805
    :cond_2
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mMouthImview:Landroid/widget/ImageView;

    const v2, 0x10805a8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setIsOnlySolarCalendar(Z)V
    .locals 1
    .parameter "isOnlySolarCalendar"

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/oppo/widget/OppoDatePicker;->mIsOnlySolarCalendar:Z

    if-eq v0, p1, :cond_0

    .line 649
    iput-boolean p1, p0, Lcom/oppo/widget/OppoDatePicker;->mIsOnlySolarCalendar:Z

    .line 650
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->setDateRange()V

    .line 652
    :cond_0
    return-void
.end method

.method public setOnDateChangedListener(Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;)V
    .locals 0
    .parameter "OnDateChangedListener"

    .prologue
    .line 640
    iput-object p1, p0, Lcom/oppo/widget/OppoDatePicker;->mOnDateChangedListener:Lcom/oppo/widget/OppoDatePicker$OnDateChangedListener;

    .line 641
    return-void
.end method

.method public setYearRange(II)Z
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 663
    iget-object v1, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v1, p1, p2}, Lcom/oppo/widget/OppoYearView;->setRange(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    iput p1, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    .line 665
    iput p2, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    .line 666
    const/4 v0, 0x1

    .line 672
    .local v0, result:Z
    :goto_0
    invoke-direct {p0}, Lcom/oppo/widget/OppoDatePicker;->setDateRange()V

    .line 673
    return v0

    .line 668
    .end local v0           #result:Z
    :cond_0
    const/16 v1, 0x780

    iput v1, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    .line 669
    const/16 v1, 0x7f4

    iput v1, p0, Lcom/oppo/widget/OppoDatePicker;->mEndYear:I

    .line 670
    const/4 v0, 0x0

    .restart local v0       #result:Z
    goto :goto_0
.end method

.method public upDateDisplayData()V
    .locals 11

    .prologue
    .line 591
    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 592
    .local v2, defLanguage:Ljava/lang/String;
    sget v7, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .local v7, year:I
    sget v0, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 593
    .local v0, day:I
    const/4 v5, 0x1

    .line 594
    .local v5, month:I
    sget-object v9, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-boolean v9, p0, Lcom/oppo/widget/OppoDatePicker;->mIsLeapYear:Z

    if-eqz v9, :cond_1

    sget v9, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    iget v10, p0, Lcom/oppo/widget/OppoDatePicker;->mLeapMonth:I

    if-le v9, v10, :cond_1

    .line 596
    sget v9, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v5, v9, -0x1

    .line 600
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 602
    .local v3, displayStr:Ljava/lang/StringBuilder;
    :try_start_0
    iget-object v9, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 607
    :goto_1
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 608
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 609
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    add-int/lit8 v9, v5, -0x1

    const/16 v10, 0x1e

    invoke-static {v9, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const-string v9, " "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 625
    :goto_2
    iget-object v9, p0, Lcom/oppo/widget/OppoDatePicker;->mDateDisplayTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    iget-boolean v9, p0, Lcom/oppo/widget/OppoDatePicker;->mIsHideDisplayDate:Z

    if-eqz v9, :cond_0

    .line 634
    iget-object v9, p0, Lcom/oppo/widget/OppoDatePicker;->mDateDisplayTextView:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 636
    :cond_0
    return-void

    .line 598
    .end local v3           #displayStr:Ljava/lang/StringBuilder;
    :cond_1
    sget v5, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    goto :goto_0

    .line 603
    .restart local v3       #displayStr:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    .line 605
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 615
    .end local v4           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v9, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104039b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 616
    .local v8, yearStr:Ljava/lang/String;
    iget-object v9, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040089

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 617
    .local v6, monthStr:Ljava/lang/String;
    iget-object v9, p0, Lcom/oppo/widget/OppoDatePicker;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040391

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 618
    .local v1, dayStr:Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 623
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public witchCalendarType(Z)V
    .locals 9
    .parameter "isChineseDate"

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 938
    invoke-virtual {p0}, Lcom/oppo/widget/OppoDatePicker;->playSoundEffect()V

    .line 939
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v2, v6}, Lcom/oppo/widget/OppoYearView;->setStopRun(Z)V

    .line 940
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    invoke-virtual {v2, v6}, Lcom/oppo/widget/OppoMonthView;->setStopRun(Z)V

    .line 941
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    invoke-virtual {v2, v6}, Lcom/oppo/widget/OppoDateView;->setStopRun(Z)V

    .line 942
    if-eqz p1, :cond_0

    .line 944
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    const v3, 0x1040621

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 946
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMouthImview:Landroid/widget/ImageView;

    const v3, 0x10805a8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 955
    new-array v1, v4, [I

    .line 957
    .local v1, timeArray:[I
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    invoke-virtual {v2, v3}, Lcom/oppo/util/ChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result v0

    .line 959
    .local v0, iLeapMonth:I
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v4, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    sget v5, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/oppo/util/ChineseDateAndSolarDate;->ChineseDateToSunDate(III)[I

    move-result-object v1

    .line 962
    aget v2, v1, v7

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 963
    aget v2, v1, v6

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 964
    aget v2, v1, v8

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 973
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    .line 975
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    iget v4, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoYearView;->setCurrentPos(I)V

    .line 976
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoMonthView;->setCurrentPos(I)V

    .line 977
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoDateView;->setCurrentPos(I)V

    .line 979
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoYearView;->reDrawChAndNewYear()V

    .line 1015
    .end local v0           #iLeapMonth:I
    :goto_0
    return-void

    .line 983
    .end local v1           #timeArray:[I
    :cond_0
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mButtonSelect:Landroid/widget/Button;

    const v3, 0x1040620

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 992
    new-array v1, v4, [I

    .line 993
    .restart local v1       #timeArray:[I
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mChineseDateAndSolarDate:Lcom/oppo/util/ChineseDateAndSolarDate;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    sget v4, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    sget v5, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/oppo/util/ChineseDateAndSolarDate;->SunDateToChineseDate(III)[I

    move-result-object v1

    .line 996
    aget v2, v1, v7

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    .line 997
    aget v2, v1, v6

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    .line 998
    aget v2, v1, v8

    sput v2, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    .line 1000
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/oppo/widget/OppoDatePicker;->mIsChineseDate:Ljava/lang/Boolean;

    .line 1009
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentYear:I

    iget v4, p0, Lcom/oppo/widget/OppoDatePicker;->mStartYear:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoYearView;->setCurrentPos(I)V

    .line 1010
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mMonthView:Lcom/oppo/widget/OppoMonthView;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentMonth:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoMonthView;->setCurrentPos(I)V

    .line 1011
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mDateView:Lcom/oppo/widget/OppoDateView;

    sget v3, Lcom/oppo/widget/OppoDatePicker;->mCurrentDay:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/oppo/widget/OppoDateView;->setCurrentPos(I)V

    .line 1013
    iget-object v2, p0, Lcom/oppo/widget/OppoDatePicker;->mYearView:Lcom/oppo/widget/OppoYearView;

    invoke-virtual {v2}, Lcom/oppo/widget/OppoYearView;->reDrawChAndNewYear()V

    goto :goto_0
.end method
