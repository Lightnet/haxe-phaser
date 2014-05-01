package phaser.input;

@:native("Phaser.Input")
extern class Input {
	
	/**
	 * Phaser.Input is the Input Manager for all types of Input across Phaser, including mouse, keyboard, touch and MSPointer.
	 * The Input manager is updated automatically by the core game loop.
	 */
	function new (game:phaser.core.Game);
	
	/**
	 * A reference to the currently running game.
	 */
	var game:phaser.core.Game;
	
	/**
	 * The canvas to which single pixels are drawn in order to perform pixel-perfect hit detection.
	 */
	var hitCanvas:Dynamic;
	
	/**
	 * The context of the pixel perfect hit canvas.
	 */
	var hitContext:Dynamic;
	
	/**
	 * An optional callback that will be fired every time the activePointer receives a move event from the DOM. Set to null to disable.
	 */
	var moveCallback:Dynamic;
	
	/**
	 * The context in which the moveCallback will be sent. Defaults to Phaser.Input but can be set to any valid JS object.
	 */
	var moveCallbackContext:Dynamic;
	
	/**
	 * How often should the input pointers be checked for updates? A value of 0 means every single frame (60fps); a value of 1 means every other frame (30fps) and so on.
	 */
	var pollRate:Float;
	
	/**
	 * You can disable all Input by setting Input.disabled = true. While set all new input related events will be ignored.
	 * If you need to disable just one type of input; for example mouse; use Input.mouse.disabled = true instead
	 */
	var disabled:Bool;
	
	/**
	 * Controls the expected behaviour when using a mouse and touch together on a multi-input device.
	 */
	var multiInputOverride:Float;
	
	/**
	 * A point object representing the current position of the Pointer.
	 */
	var position:Dynamic;
	
	/**
	 * A point object representing the speed of the Pointer. Only really useful in single Pointer games; otherwise see the Pointer objects directly.
	 */
	var speed:Dynamic;
	
	/**
	 * A Circle object centered on the x/y screen coordinates of the Input.
	 * Default size of 44px (Apples recommended "finger tip" size) but can be changed to anything.
	 */
	var circle:phaser.geom.Circle;
	
	/**
	 * The scale by which all input coordinates are multiplied; calculated by the ScaleManager. In an un-scaled game the values will be x = 1 and y = 1.
	 */
	var scale:Dynamic;
	
	/**
	 * The maximum number of Pointers allowed to be active at any one time. For lots of games it's useful to set this to 1.
	 */
	var maxPointers:Float;
	
	/**
	 * The current number of active Pointers.
	 */
	var currentPointers:Float;
	
	/**
	 * The number of milliseconds that the Pointer has to be pressed down and then released to be considered a tap or click.
	 */
	var tapRate:Float;
	
	/**
	 * The number of milliseconds between taps of the same Pointer for it to be considered a double tap / click.
	 */
	var doubleTapRate:Float;
	
	/**
	 * The number of milliseconds that the Pointer has to be pressed down for it to fire a onHold event.
	 */
	var holdRate:Float;
	
	/**
	 * The number of milliseconds below which the Pointer is considered justPressed.
	 */
	var justPressedRate:Float;
	
	/**
	 * The number of milliseconds below which the Pointer is considered justReleased .
	 */
	var justReleasedRate:Float;
	
	/**
	 * Sets if the Pointer objects should record a history of x/y coordinates they have passed through.
	 * The history is cleared each time the Pointer is pressed down.
	 * The history is updated at the rate specified in Input.pollRate
	 */
	var recordPointerHistory:Bool;
	
	/**
	 * The rate in milliseconds at which the Pointer objects should update their tracking history.
	 */
	var recordRate:Float;
	
	/**
	 * The total number of entries that can be recorded into the Pointer objects tracking history.
	 * If the Pointer is tracking one event every 100ms; then a trackLimit of 100 would store the last 10 seconds worth of history.
	 */
	var recordLimit:Float;
	
	/**
	 * A Pointer object.
	 */
	var pointer1:phaser.input.Pointer;
	
	/**
	 * A Pointer object.
	 */
	var pointer2:phaser.input.Pointer;
	
	/**
	 * A Pointer object.
	 */
	var pointer3:phaser.input.Pointer;
	
	/**
	 * A Pointer object.
	 */
	var pointer4:phaser.input.Pointer;
	
	/**
	 * A Pointer object.
	 */
	var pointer5:phaser.input.Pointer;
	
	/**
	 * A Pointer object.
	 */
	var pointer6:phaser.input.Pointer;
	
	/**
	 * A Pointer object.
	 */
	var pointer7:phaser.input.Pointer;
	
	/**
	 * A Pointer object.
	 */
	var pointer8:phaser.input.Pointer;
	
	/**
	 * A Pointer object.
	 */
	var pointer9:phaser.input.Pointer;
	
	/**
	 * A Pointer object.
	 */
	var pointer10:phaser.input.Pointer;
	
	/**
	 * The most recently active Pointer object.
	 * When you've limited max pointers to 1 this will accurately be either the first finger touched or mouse.
	 */
	var activePointer:phaser.input.Pointer;
	
	/**
	 * The mouse has its own unique Phaser.Pointer object which you can use if making a desktop specific game.
	 */
	var mousePointer:Dynamic;
	
	/**
	 * The Mouse Input manager.
	 */
	var mouse:phaser.input.Mouse;
	
	/**
	 * The Keyboard Input manager.
	 */
	var keyboard:phaser.input.Keyboard;
	
	/**
	 * the Touch Input manager.
	 */
	var touch:phaser.input.Touch;
	
	/**
	 * The MSPointer Input manager.
	 */
	var mspointer:phaser.input.MSPointer;
	
	/**
	 * The Gamepad Input manager.
	 */
	var gamepad:phaser.input.Gamepad;
	
	/**
	 * If the Input Manager has been reset locked then all calls made to InputManager.reset, such as from a State change, are ignored.
	 */
	var resetLocked:Bool;
	
	/**
	 * A Signal that is dispatched each time a pointer is pressed down.
	 */
	var onDown:phaser.core.Signal;
	
	/**
	 * A Signal that is dispatched each time a pointer is released.
	 */
	var onUp:phaser.core.Signal;
	
	/**
	 * A Signal that is dispatched each time a pointer is tapped.
	 */
	var onTap:phaser.core.Signal;
	
	/**
	 * A Signal that is dispatched each time a pointer is held down.
	 */
	var onHold:phaser.core.Signal;
	
	/**
	 * A list of interactive objects. Te InputHandler components add and remove themselves from this.
	 */
	var interactiveItems:phaser.core.ArrayList;
	
	/**
	 * Internal cache var.
	 */
	var _localPoint:Dynamic;
	
	/**
	 * Internal var holding the current poll counter.
	 */
	var _pollCounter:Float;
	
	/**
	 * A point object representing the previous position of the Pointer.
	 */
	var _oldPosition:Dynamic;
	
	/**
	 * x coordinate of the most recent Pointer event
	 */
	var _x:Float;
	
	/**
	 * Y coordinate of the most recent Pointer event
	 */
	var _y:Float;
	
	/**
	 * @constant
	 */
	static var MOUSE_OVERRIDES_TOUCH:Float;
	
	/**
	 * @constant
	 */
	static var TOUCH_OVERRIDES_MOUSE:Float;
	
	/**
	 * @constant
	 */
	static var MOUSE_TOUCH_COMBINE:Float;
	
	/**
	 * Starts the Input Manager running.
	 */
	function boot ():Void;
	
	/**
	 * Stops all of the Input Managers from running.
	 */
	function destroy ():Void;
	
	/**
	 * Sets a callback that is fired every time the activePointer receives a DOM move event such as a mousemove or touchmove.
	 * It will be called every time the activePointer moves, which in a multi-touch game can be a lot of times, so this is best
	 * to only use if you've limited input to a single pointer (i.e. mouse or touch)
	 */
	function setMoveCallback (callback:Dynamic, callbackContext:Dynamic):Void;
	
	/**
	 * Add a new Pointer object to the Input Manager. By default Input creates 3 pointer objects: mousePointer, pointer1 and pointer2.
	 * If you need more then use this to create a new one, up to a maximum of 10.
	 */
	function addPointer ():phaser.input.Pointer;
	
	/**
	 * Updates the Input Manager. Called by the core Game loop.
	 */
	function update ():Void;
	
	/**
	 * Reset all of the Pointers and Input states. The optional hard parameter will reset any events or callbacks that may be bound.
	 * Input.reset is called automatically during a State change or if a game loses focus / visibility. If you wish to control the reset
	 * directly yourself then set InputManager.resetLocked to true.
	 */
	function reset (?hard:Bool = false):Void;
	
	/**
	 * Resets the speed and old position properties.
	 */
	function resetSpeed (x:Float, y:Float):Void;
	
	/**
	 * Find the first free Pointer object and start it, passing in the event data. This is called automatically by Phaser.Touch and Phaser.MSPointer.
	 */
	function startPointer (event:Dynamic):phaser.input.Pointer;
	
	/**
	 * Updates the matching Pointer object, passing in the event data. This is called automatically and should not normally need to be invoked.
	 */
	function updatePointer (event:Dynamic):phaser.input.Pointer;
	
	/**
	 * Stops the matching Pointer object, passing in the event data.
	 */
	function stopPointer (event:Dynamic):phaser.input.Pointer;
	
	/**
	 * Get the next Pointer object whos active property matches the given state
	 */
	function getPointer (state:Bool):phaser.input.Pointer;
	
	/**
	 * Get the Pointer object whos identified property matches the given identifier value.
	 */
	function getPointerFromIdentifier (identifier:Float):phaser.input.Pointer;
	
	/**
	 * This will return the local coordinates of the specified displayObject based on the given Pointer.
	 */
	@:overload(function (displayObject:phaser.gameobjects.Sprite, pointer:phaser.input.Pointer):Dynamic {})
	function getLocalPosition (displayObject:phaser.gameobjects.Image, pointer:phaser.input.Pointer):Dynamic;
	
	/**
	 * Tests if the pointer hits the given object.
	 */
	function hitTest (displayObject:Dynamic, pointer:phaser.input.Pointer, localPoint:Dynamic):Void;
	
	/**
	 * The X coordinate of the most recently active pointer. This value takes game scaling into account automatically. See Pointer.screenX/clientX for source values.
	 */
	var x:Float;
	
	/**
	 * The Y coordinate of the most recently active pointer. This value takes game scaling into account automatically. See Pointer.screenY/clientY for source values.
	 */
	var y:Float;
	
	/**
	 * @name Phaser.Input#pollLocked
	 */
	var pollLocked(default, null):Bool;
	
	/**
	 * The total number of inactive Pointers
	 */
	var totalInactivePointers(default, null):Float;
	
	/**
	 * The total number of active Pointers
	 */
	var totalActivePointers(default, null):Float;
	
	/**
	 * The world X coordinate of the most recently active pointer.
	 */
	var worldX:Float;
	
	/**
	 * The world Y coordinate of the most recently active pointer.
	 */
	var worldY:Float;
	
}
