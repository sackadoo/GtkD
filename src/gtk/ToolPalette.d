/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = GtkToolPalette.html
 * outPack = gtk
 * outFile = ToolPalette
 * strct   = GtkToolPalette
 * realStrct=
 * ctorStrct=GtkWidget
 * clss    = ToolPalette
 * interf  = 
 * class Code: Yes
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * 	- BuildableIF
 * 	- OrientableIF
 * prefixes:
 * 	- gtk_tool_palette_
 * omit structs:
 * omit prefixes:
 * omit code:
 * omit signals:
 * imports:
 * 	- glib.Str
 * 	- gtk.Adjustment
 * 	- gtk.ToolItem
 * 	- gtk.ToolItemGroup
 * 	- gtk.Widget
 * 	- gtk.BuildableIF
 * 	- gtk.BuildableT
 * 	- gtk.OrientableIF
 * 	- gtk.OrientableT
 * structWrap:
 * 	- GtkAdjustment* -> Adjustment
 * 	- GtkToolItem* -> ToolItem
 * 	- GtkToolItemGroup* -> ToolItemGroup
 * 	- GtkWidget* -> Widget
 * module aliases:
 * local aliases:
 * 	- getStyle -> getToolbarStyle
 * overrides:
 */

module gtk.ToolPalette;

public  import gtkc.gtktypes;

private import gtkc.gtk;
private import glib.ConstructionException;

private import gobject.Signals;
public  import gtkc.gdktypes;

private import glib.Str;
private import gtk.Adjustment;
private import gtk.ToolItem;
private import gtk.ToolItemGroup;
private import gtk.Widget;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.OrientableIF;
private import gtk.OrientableT;



private import gtk.Container;

/**
 * Description
 * A GtkToolPalette allows you to add GtkToolItems to a palette-like
 * container with different categories and drag and drop support.
 * A GtkToolPalette is created with a call to gtk_tool_palette_new().
 * GtkToolItems cannot be added directly to a GtkToolPalette -
 * instead they are added to a GtkToolItemGroup which can than be added
 * to a GtkToolPalette. To add a GtkToolItemGroup to a GtkToolPalette,
 * use gtk_container_add().
 *  1
 * 2
 * 3
 * 4
 * 5
 * 6
 * 7
 * 8
 * 9
 *  GtkWidget *palette, *group;
 * GtkToolItem *item;
 * palette = gtk_tool_palette_new ();
 * group = gtk_tool_item_group_new (_("Test Category"));
 * gtk_container_add (GTK_CONTAINER (palette), group);
 * item = gtk_tool_button_new_from_stock (GTK_STOCK_OK);
 * gtk_tool_item_group_insert (GTK_TOOL_ITEM_GROUP (group), item, -1);
 * The easiest way to use drag and drop with GtkToolPalette is to call
 * gtk_tool_palette_add_drag_dest() with the desired drag source palette
 * and the desired drag target widget. Then gtk_tool_palette_get_drag_item()
 * can be used to get the dragged item in the "drag-data-received"
 * signal handler of the drag target.
 *  1
 * 2
 * 3
 * 4
 * 5
 * 6
 * 7
 * 8
 * 9
 * 10
 * 11
 * 12
 * 13
 * 14
 * 15
 * 16
 * 17
 * 18
 * 19
 * 20
 * 21
 * 22
 * 23
 * 24
 * 25
 * 26
 * 27
 * 28
 * 29
 * 30
 * 31
 * 32
 * 33
 * 34
 *  static void
 * passive_canvas_drag_data_received (GtkWidget *widget,
 *  GdkDragContext *context,
 *  gint x,
 *  gint y,
 *  GtkSelectionData *selection,
 *  guint info,
 *  guint time,
 *  gpointer data)
 * {
	 *  GtkWidget *palette;
	 *  GtkWidget *item;
	 *  /+* Get the dragged item +/
	 *  palette = gtk_widget_get_ancestor (gtk_drag_get_source_widget (context),
	 *  GTK_TYPE_TOOL_PALETTE);
	 *  if (palette != NULL)
	 *  item = gtk_tool_palette_get_drag_item (GTK_TOOL_PALETTE (palette),
	 *  selection);
	 *  /+* Do something with item +/
 * }
 * GtkWidget *target, palette;
 * palette = gtk_tool_palette_new ();
 * target = gtk_drawing_area_new ();
 * g_signal_connect (G_OBJECT (target), "drag-data-received",
 *  G_CALLBACK (passive_canvas_drag_data_received), NULL);
 * gtk_tool_palette_add_drag_dest (GTK_TOOL_PALETTE (palette), target,
 *  GTK_DEST_DEFAULT_ALL,
 *  GTK_TOOL_PALETTE_DRAG_ITEMS,
 *  GDK_ACTION_COPY);
 */
public class ToolPalette : Container, BuildableIF, OrientableIF
{
	
	/** the main Gtk struct */
	protected GtkToolPalette* gtkToolPalette;
	
	
	public GtkToolPalette* getToolPaletteStruct()
	{
		return gtkToolPalette;
	}
	
	
	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gtkToolPalette;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkToolPalette* gtkToolPalette)
	{
		if(gtkToolPalette is null)
		{
			this = null;
			return;
		}
		//Check if there already is a D object for this gtk struct
		void* ptr = getDObject(cast(GObject*)gtkToolPalette);
		if( ptr !is null )
		{
			this = cast(ToolPalette)ptr;
			return;
		}
		super(cast(GtkContainer*)gtkToolPalette);
		this.gtkToolPalette = gtkToolPalette;
	}
	
	// add the Buildable capabilities
	mixin BuildableT!(GtkToolPalette);
	
	// add the Orientable capabilities
	mixin OrientableT!(GtkToolPalette);
	
	/**
	 */
	int[char[]] connectedSignals;
	
	void delegate(Adjustment, Adjustment, ToolPalette)[] onSetScrollAdjustmentsListeners;
	/**
	 * Set the scroll adjustments for the viewport.
	 * Usually scrolled containers like GtkScrolledWindow will emit this
	 * signal to connect two instances of GtkScrollbar to the scroll
	 * directions of the GtkToolpalette.
	 * Since 2.20
	 */
	void addOnSetScrollAdjustments(void delegate(Adjustment, Adjustment, ToolPalette) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		if ( !("set-scroll-adjustments" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"set-scroll-adjustments",
			cast(GCallback)&callBackSetScrollAdjustments,
			cast(void*)this,
			null,
			connectFlags);
			connectedSignals["set-scroll-adjustments"] = 1;
		}
		onSetScrollAdjustmentsListeners ~= dlg;
	}
	extern(C) static void callBackSetScrollAdjustments(GtkToolPalette* widgetStruct, GtkAdjustment* hadjustment, GtkAdjustment* vadjustment, ToolPalette toolPalette)
	{
		foreach ( void delegate(Adjustment, Adjustment, ToolPalette) dlg ; toolPalette.onSetScrollAdjustmentsListeners )
		{
			dlg(new Adjustment(hadjustment), new Adjustment(vadjustment), toolPalette);
		}
	}
	
	
	/**
	 * Creates a new tool palette.
	 * Since 2.20
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this ()
	{
		// GtkWidget* gtk_tool_palette_new (void);
		auto p = gtk_tool_palette_new();
		if(p is null)
		{
			throw new ConstructionException("null returned by gtk_tool_palette_new()");
		}
		this(cast(GtkToolPalette*) p);
	}
	
	/**
	 * Gets whether group is exclusive or not.
	 * See gtk_tool_palette_set_exclusive().
	 * Since 2.20
	 * Params:
	 * group = a GtkToolItemGroup which is a child of palette
	 * Returns: TRUE if group is exclusive
	 */
	public int getExclusive(ToolItemGroup group)
	{
		// gboolean gtk_tool_palette_get_exclusive (GtkToolPalette *palette,  GtkToolItemGroup *group);
		return gtk_tool_palette_get_exclusive(gtkToolPalette, (group is null) ? null : group.getToolItemGroupStruct());
	}
	
	/**
	 * Sets whether the group should be exclusive or not.
	 * If an exclusive group is expanded all other groups are collapsed.
	 * Since 2.20
	 * Params:
	 * group = a GtkToolItemGroup which is a child of palette
	 * exclusive = whether the group should be exclusive or not
	 */
	public void setExclusive(ToolItemGroup group, int exclusive)
	{
		// void gtk_tool_palette_set_exclusive (GtkToolPalette *palette,  GtkToolItemGroup *group,  gboolean exclusive);
		gtk_tool_palette_set_exclusive(gtkToolPalette, (group is null) ? null : group.getToolItemGroupStruct(), exclusive);
	}
	
	/**
	 * Gets whether group should be given extra space.
	 * See gtk_tool_palette_set_expand().
	 * Since 2.20
	 * Params:
	 * group = a GtkToolItemGroup which is a child of palette
	 * Returns: TRUE if group should be given extra space, FALSE otherwise
	 */
	public int getExpand(ToolItemGroup group)
	{
		// gboolean gtk_tool_palette_get_expand (GtkToolPalette *palette,  GtkToolItemGroup *group);
		return gtk_tool_palette_get_expand(gtkToolPalette, (group is null) ? null : group.getToolItemGroupStruct());
	}
	
	/**
	 * Sets whether the group should be given extra space.
	 * Since 2.20
	 * Params:
	 * group = a GtkToolItemGroup which is a child of palette
	 * expand = whether the group should be given extra space
	 */
	public void setExpand(ToolItemGroup group, int expand)
	{
		// void gtk_tool_palette_set_expand (GtkToolPalette *palette,  GtkToolItemGroup *group,  gboolean expand);
		gtk_tool_palette_set_expand(gtkToolPalette, (group is null) ? null : group.getToolItemGroupStruct(), expand);
	}
	
	/**
	 * Gets the position of group in palette as index.
	 * See gtk_tool_palette_set_group_position().
	 * Since 2.20
	 * Params:
	 * group = a GtkToolItemGroup
	 * Returns: the index of group or -1 if group is not a child of palette
	 */
	public int getGroupPosition(ToolItemGroup group)
	{
		// gint gtk_tool_palette_get_group_position (GtkToolPalette *palette,  GtkToolItemGroup *group);
		return gtk_tool_palette_get_group_position(gtkToolPalette, (group is null) ? null : group.getToolItemGroupStruct());
	}
	
	/**
	 * Sets the position of the group as an index of the tool palette.
	 * If position is 0 the group will become the first child, if position is
	 * -1 it will become the last child.
	 * Since 2.20
	 * Params:
	 * group = a GtkToolItemGroup which is a child of palette
	 * position = a new index for group
	 */
	public void setGroupPosition(ToolItemGroup group, int position)
	{
		// void gtk_tool_palette_set_group_position (GtkToolPalette *palette,  GtkToolItemGroup *group,  gint position);
		gtk_tool_palette_set_group_position(gtkToolPalette, (group is null) ? null : group.getToolItemGroupStruct(), position);
	}
	
	/**
	 * Gets the size of icons in the tool palette.
	 * See gtk_tool_palette_set_icon_size().
	 * Since 2.20
	 * Returns: the GtkIconSize of icons in the tool palette. type int
	 */
	public GtkIconSize getIconSize()
	{
		// GtkIconSize gtk_tool_palette_get_icon_size (GtkToolPalette *palette);
		return gtk_tool_palette_get_icon_size(gtkToolPalette);
	}
	
	/**
	 * Sets the size of icons in the tool palette.
	 * Since 2.20
	 * Params:
	 * iconSize = the GtkIconSize that icons in the tool
	 *  palette shall have. type int
	 */
	public void setIconSize(GtkIconSize iconSize)
	{
		// void gtk_tool_palette_set_icon_size (GtkToolPalette *palette,  GtkIconSize icon_size);
		gtk_tool_palette_set_icon_size(gtkToolPalette, iconSize);
	}
	
	/**
	 * Unsets the tool palette icon size set with gtk_tool_palette_set_icon_size(),
	 * so that user preferences will be used to determine the icon size.
	 * Since 2.20
	 */
	public void unsetIconSize()
	{
		// void gtk_tool_palette_unset_icon_size (GtkToolPalette *palette);
		gtk_tool_palette_unset_icon_size(gtkToolPalette);
	}
	
	/**
	 * Gets the style (icons, text or both) of items in the tool palette.
	 * Since 2.20
	 * Returns: the GtkToolbarStyle of items in the tool palette.
	 */
	public GtkToolbarStyle getToolbarStyle()
	{
		// GtkToolbarStyle gtk_tool_palette_get_style (GtkToolPalette *palette);
		return gtk_tool_palette_get_style(gtkToolPalette);
	}
	
	/**
	 * Sets the style (text, icons or both) of items in the tool palette.
	 * Since 2.20
	 * Params:
	 * style = the GtkToolbarStyle that items in the tool palette shall have
	 */
	public void setStyle(GtkToolbarStyle style)
	{
		// void gtk_tool_palette_set_style (GtkToolPalette *palette,  GtkToolbarStyle style);
		gtk_tool_palette_set_style(gtkToolPalette, style);
	}
	
	/**
	 * Unsets a toolbar style set with gtk_tool_palette_set_style(),
	 * so that user preferences will be used to determine the toolbar style.
	 * Since 2.20
	 */
	public void unsetStyle()
	{
		// void gtk_tool_palette_unset_style (GtkToolPalette *palette);
		gtk_tool_palette_unset_style(gtkToolPalette);
	}
	
	/**
	 * Sets palette as drag source (see gtk_tool_palette_set_drag_source())
	 * and sets widget as a drag destination for drags from palette.
	 * See gtk_drag_dest_set().
	 * Since 2.20
	 * Params:
	 * widget = a GtkWidget which should be a drag destination for palette
	 * flags = the flags that specify what actions GTK+ should take for drops
	 *  on that widget
	 * targets = the GtkToolPaletteDragTargets which the widget
	 *  should support
	 * actions = the GdkDragActions which the widget should suppport
	 */
	public void addDragDest(Widget widget, GtkDestDefaults flags, GtkToolPaletteDragTargets targets, GdkDragAction actions)
	{
		// void gtk_tool_palette_add_drag_dest (GtkToolPalette *palette,  GtkWidget *widget,  GtkDestDefaults flags,  GtkToolPaletteDragTargets targets,  GdkDragAction actions);
		gtk_tool_palette_add_drag_dest(gtkToolPalette, (widget is null) ? null : widget.getWidgetStruct(), flags, targets, actions);
	}
	
	/**
	 * Get the dragged item from the selection.
	 * This could be a GtkToolItem or a GtkToolItemGroup.
	 * Since 2.20
	 * Params:
	 * selection = a GtkSelectionData
	 * Returns: the dragged item in selection
	 */
	public Widget getDragItem(GtkSelectionData* selection)
	{
		// GtkWidget* gtk_tool_palette_get_drag_item (GtkToolPalette *palette,  const GtkSelectionData *selection);
		auto p = gtk_tool_palette_get_drag_item(gtkToolPalette, selection);
		if(p is null)
		{
			return null;
		}
		return new Widget(cast(GtkWidget*) p);
	}
	
	/**
	 * Get the target entry for a dragged GtkToolItemGroup.
	 * Since 2.20
	 * Returns: the GtkTargetEntry for a dragged group
	 */
	public static GtkTargetEntry* getDragTargetGroup()
	{
		// const GtkTargetEntry* gtk_tool_palette_get_drag_target_group  (void);
		return gtk_tool_palette_get_drag_target_group();
	}
	
	/**
	 * Gets the target entry for a dragged GtkToolItem.
	 * Since 2.20
	 * Returns: the GtkTargetEntry for a dragged item.
	 */
	public static GtkTargetEntry* getDragTargetItem()
	{
		// const GtkTargetEntry* gtk_tool_palette_get_drag_target_item  (void);
		return gtk_tool_palette_get_drag_target_item();
	}
	
	/**
	 * Gets the group at position (x, y).
	 * Since 2.20
	 * Params:
	 * x = the x position
	 * y = the y position
	 * Returns: the GtkToolItemGroup at position or NULL if there is no such group
	 */
	public ToolItemGroup getDropGroup(int x, int y)
	{
		// GtkToolItemGroup* gtk_tool_palette_get_drop_group (GtkToolPalette *palette,  gint x,  gint y);
		auto p = gtk_tool_palette_get_drop_group(gtkToolPalette, x, y);
		if(p is null)
		{
			return null;
		}
		return new ToolItemGroup(cast(GtkToolItemGroup*) p);
	}
	
	/**
	 * Gets the item at position (x, y).
	 * See gtk_tool_palette_get_drop_group().
	 * Since 2.20
	 * Params:
	 * x = the x position
	 * y = the y position
	 * Returns: the GtkToolItem at position or NULL if there is no such item
	 */
	public ToolItem getDropItem(int x, int y)
	{
		// GtkToolItem* gtk_tool_palette_get_drop_item (GtkToolPalette *palette,  gint x,  gint y);
		auto p = gtk_tool_palette_get_drop_item(gtkToolPalette, x, y);
		if(p is null)
		{
			return null;
		}
		return new ToolItem(cast(GtkToolItem*) p);
	}
	
	/**
	 * Sets the tool palette as a drag source.
	 * Enables all groups and items in the tool palette as drag sources
	 * on button 1 and button 3 press with copy and move actions.
	 * See gtk_drag_source_set().
	 * Since 2.20
	 * Params:
	 * targets = the GtkToolPaletteDragTargets
	 *  which the widget should support
	 */
	public void setDragSource(GtkToolPaletteDragTargets targets)
	{
		// void gtk_tool_palette_set_drag_source (GtkToolPalette *palette,  GtkToolPaletteDragTargets targets);
		gtk_tool_palette_set_drag_source(gtkToolPalette, targets);
	}
	
	/**
	 * Gets the horizontal adjustment of the tool palette.
	 * Since 2.20
	 * Returns: the horizontal adjustment of palette
	 */
	public Adjustment getHadjustment()
	{
		// GtkAdjustment* gtk_tool_palette_get_hadjustment (GtkToolPalette *palette);
		auto p = gtk_tool_palette_get_hadjustment(gtkToolPalette);
		if(p is null)
		{
			return null;
		}
		return new Adjustment(cast(GtkAdjustment*) p);
	}
	
	/**
	 * Gets the vertical adjustment of the tool palette.
	 * Since 2.20
	 * Returns: the vertical adjustment of palette
	 */
	public Adjustment getVadjustment()
	{
		// GtkAdjustment* gtk_tool_palette_get_vadjustment (GtkToolPalette *palette);
		auto p = gtk_tool_palette_get_vadjustment(gtkToolPalette);
		if(p is null)
		{
			return null;
		}
		return new Adjustment(cast(GtkAdjustment*) p);
	}
}